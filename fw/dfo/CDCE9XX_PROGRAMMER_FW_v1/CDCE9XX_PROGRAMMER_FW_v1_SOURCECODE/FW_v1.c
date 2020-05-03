/*
 * FW_v1.c
 *
 * Created: 15.03.2015 18:32:22
 * Author: Jakob Schäfer
 *
 * Firmware für die CDCE9XX Programmer-Hardware
 *
 * Dieses Programm nutzt die I2C Bibliothek von Peter Fleury
 * http://tinyurl.com/peterfleury 
 *
 * v1.0 - initial release
 *
 * F_CPU muss in der Toolchain deklariert werden mit 8 MHz:
 * Toolchain->AVR/GNU C Compiler->Symbols->Add Symbol->F_CPU=8000000UL 
 *
 * Fuses:
 *		- low byte:		0xFF
 *		- high byte:	0xDF
 */ 

/******************************************************************************
Includes
******************************************************************************/
#include <avr/io.h>
#include <util/delay.h>
#include "i2cmaster.h"

/******************************************************************************
Macros & Defines
******************************************************************************/
#define ID "CDCE9XX_PROGRAMMER"
#define FW_VERSION "1.0"
#define FW_DATE "31.03.2015"
#define ERR_NOERROR 0
#define ERR_PROTOCOL 1
#define ERR_I2C 2
#define ERR_VERIFY 3
#define BAUDRATE 9600UL
#define UBBR0 ( (F_CPU/(16*BAUDRATE)) -1 )

/******************************************************************************
Prototypen
******************************************************************************/
void initUART0(void);
void writeCharToUART0(uint8_t data);
uint8_t readCharFromUART0(void);
void flushRxFIFO(void);
void writeStringToUART0(char* string);
uint8_t readRegisterFromCDCE9XX(uint8_t deviceAddress,
								uint8_t registerAddress,
								uint8_t* error);
void writeRegisterToCDCE9XX(	uint8_t deviceAddress,
								uint8_t registerAddress,
								uint8_t data,
								uint8_t* error);
uint8_t readProgrammingParameters(void);
uint8_t programCDCE9XX(void);
					
/******************************************************************************
Globale Variablen
******************************************************************************/
uint8_t devAddress;			// i2c-Adresse des zu programmierenden CDCE9XX
uint8_t nRegisters;			// Anzahl der zu programmierenden Register
uint8_t registers[80];		// Array für Register, max 80 Register beim CDCE949
uint8_t storeEEPROM;		// sollen Register im EEPROM gespeichert werden?

/******************************************************************************
Main
******************************************************************************/
int main(void)
{
	uint8_t error;				// 0: kein Fehler beim Einlesen/Programmieren
	
	i2c_init();					// i2c-Schnittstelle initialisieren
	initUART0();				// UART0-Schnittstelle initialisieren	
								
    while(1)
    {	
		// Wenn ein Zeichen am UART0 anliegt:
		if ( UCSR0A & (1<<RXC0) ){
			
			error = ERR_NOERROR;
			
			switch (readCharFromUART0()){
				
				case '?':	
					// ID senden
					writeStringToUART0(ID);
					break;
					
				case 'V':
				case 'v':
					// Firmware Version senden
					writeStringToUART0(FW_VERSION);
					break;	
									
				case 'D':	
				case 'd':
					// Firmware Datum senden
					writeStringToUART0(FW_DATE);
					break;	
									
				case 'W':
				case 'w':
					// Registerwerte und weitere Parameter einlesen
					error = readProgrammingParameters();
					// CDCE9XX jetzt programmieren
					if (!error) error = programCDCE9XX();
					// Fehler als Ergebnis zurücksenden
					writeCharToUART0(error);
					break;
				
				default:
					error = ERR_PROTOCOL;
					// Falls weitere Zeichen im UART, alle verwerfen:
					flushRxFIFO();
					// Protokollfehler senden:
					writeCharToUART0(error);					
					break;					
			} // End Switch
			
		} // Ende - Daten am UART0
        
    } // Ende Main-Loop
	
} // Ende Main

uint8_t readProgrammingParameters(void){
// liest die für CDCE9XX-Programmierung nötigen Parameter ein

	uint8_t error = ERR_NOERROR;
	uint8_t i = 0;
	
	// i2c-Adresse des CDCE9XX einlesen
	devAddress = readCharFromUART0();
	if (devAddress > 127) error = ERR_PROTOCOL;
	
	// Register im CDCE9XX-EEPROM speichern?
	// 0: nein; 1: ja 
	storeEEPROM = readCharFromUART0();
	if (storeEEPROM > 1) error = ERR_PROTOCOL;
	
	// Anzahl der zu programmierenden Reg. einlesen 
	if (!error) nRegisters = readCharFromUART0();
	// zulässige Anzahl: 32, 48, 64 oder 80 Register
	if ((nRegisters!=32)&&(nRegisters!=48)&&
		(nRegisters!=64)&&(nRegisters!=80)) error = ERR_PROTOCOL;
		
	// alle Register-Werte einlesen
	if (!error){
		while (i<nRegisters) registers[i++] = readCharFromUART0();
	}
	
	// Danach sollten keine weiteren Daten mehr im Puffer
	// vorliegen. Wenn doch ==> Protokoll-Fehler!
	_delay_ms(20);
	if (UCSR0A & (1<<RXC0)){
		error = ERR_PROTOCOL;
		flushRxFIFO();
	}
	
	return error;
}

uint8_t programCDCE9XX(void){
// programmiert den CDCE9XX und gibt einen Fehlercode zurück

	uint8_t error = ERR_NOERROR;
	uint8_t i, temp, register0x06;	
	
	// zunächst alle Register beschreiben
	i = 0;
	while( (i<nRegisters) && (!error)){
		writeRegisterToCDCE9XX(devAddress, i, registers[i], &error);
		i++;
	}
	
	// storeToEEPROM = 1? => Register im EEPROM abspeichern
	if ( storeEEPROM && (!error) ){
		// dafür zunächst Register 0x06 auslesen
		register0x06 = readRegisterFromCDCE9XX(devAddress, 0x06, &error);
		// dann das EEWRITE-Bit setzen:
		register0x06 |= (1<<0);
		// und den Wert in Register 0x06 zurückschreiben
		if (!error) writeRegisterToCDCE9XX(devAddress, 0x06, register0x06, &error);
		
		// jetzt solange Register 0x01 auslesen bis EEPROM-
		// Schreibvorgang abgeschlossen ist (EEPIP-Bit = 0)
		if (!error){
			do{
				temp = readRegisterFromCDCE9XX(devAddress, 0x01, &error);
			}while( (temp&(1<<6)) && (!error) );
		}		
		// Schreibvorgang beendet, EEWRITE-Bit in Register 0x06 muss wieder gelöscht werden
		register0x06 &= ~(1<<0);
		if (!error) writeRegisterToCDCE9XX(devAddress, 0x06, register0x06, &error);
	}
	
	// Nach erfolgtem Schreiben der Register, nun wieder alle Register auslesen und vergleichen:
	i = 0;
	while ( (i<nRegisters) && !error){
		// i. Register einlesen
		temp = readRegisterFromCDCE9XX(devAddress, i, &error);
		// Register 0x00 und 0x07 bis 0x0F nicht vergleichen, da read-only bzw. unbestimmt
		if (!error && ((i!=0x00) && (i<0x7) && (i>0x0F))){
			// Wenn geschriebener und gelesener Wert unterschiedlich ==> Verify-Fehler
			if (temp != registers[i]) error = ERR_VERIFY;
		}
		i++;
	}

	return error;
}

								
uint8_t readRegisterFromCDCE9XX(uint8_t deviceAddress, 
								uint8_t registerAddress,
								uint8_t* error){
							
	uint8_t data = 0;
	uint8_t err = 0;
		
	err = i2c_start( (deviceAddress<<1) + I2C_WRITE) * ERR_I2C;
	if(!err) err = i2c_write(128 + registerAddress) * ERR_I2C;
	if(!err) err = i2c_rep_start( (deviceAddress<<1) + I2C_READ) * ERR_I2C;
	if(!err) data = i2c_readNak();
	i2c_stop();
	
	*error = err;
	return data;
}
							
void writeRegisterToCDCE9XX(uint8_t deviceAddress, 
							uint8_t registerAddress, 
							uint8_t data,
							uint8_t* error){
	uint8_t err = 0;
	
	err = i2c_start( (deviceAddress<<1) + I2C_WRITE) * ERR_I2C;
	if(!err) err = i2c_write(128 + registerAddress) * ERR_I2C;
	if(!err) err = i2c_write(data) * ERR_I2C;
	i2c_stop();
	
	*error = err;
}

void initUART0(void){
	UBRR0H = UBBR0 >> 8;				// High Byte UBBR0
	UBRR0L = UBBR0 & 0xFF;				// Low Byte UBBR0
	
	UCSR0B |= (1<<RXEN0)|(1<<TXEN0);	// UART0 RX+TX einschalten
	UCSR0C = (1<<UCSZ00)|(1<<UCSZ01);	// Asynchron 8N1
}


void writeCharToUART0(uint8_t data){
	while (!(UCSR0A & (1<<UDRE0)) );	// warten bis Senden moeglich	
	UDR0 = data;						// Byte mit UART0 senden
}

uint8_t readCharFromUART0(void){
	while(!(UCSR0A & (1<<RXC0)));		// warten bis Daten vorhanden
	return UDR0;						// empfangenes Byte zurückgeben
}

void flushRxFIFO(void){
	_delay_ms(20);						// warten, sonst zu schnell
	while(UCSR0A & (1<<RXC0)){			// solange noch Zeichen am UART0 anliegen,
		readCharFromUART0();			// diese auslesen und verwerfen
		_delay_ms(20);
	}
}

void writeStringToUART0(char* string){	
	while(*string){						// solange noch Zeichen außer 0 im String vorhanden,
		writeCharToUART0(*string);		// aktuelles Zeichen senden
		string++;						// Zeiger erhöhen
	}
}