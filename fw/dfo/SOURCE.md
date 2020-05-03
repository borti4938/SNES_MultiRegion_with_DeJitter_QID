### DFO

#### Acknowledgement and Licensing

Original source by community user _micro_. All rights goes to him.

- Source @ Circuit-Board.de: [Link](https://circuit-board.de/forum/index.php/Thread/18016-DFO-Dual-Frequency-Oscillator/)
- Source @ NFGgames: [Link](https://nfggames.com/forum2/index.php?topic=5744.0)
- Source @ OSHPark: [Link](https://oshpark.com/shared_projects/SeJLCY52)

Source links will forward you to original source codes. Source codes provided in this repository are just mirrors.

#### Modifications Compared to Original Source

Modifications made by Peter Bartmann aka borti4938 in 2019:

- PCB: remove slide switch and replace it with pin header
- Allow V_target to be at 5V (right position shorted)

#### Firmware for Programmer

Microcontroller on the programmer PCB needs a firmware (written by micro) in order to work properly. Use the firmware provided in [this subfolder](./CDCE9XX_PROGRAMMER_FW_v1) or the one in the original source. Please make sure to set the [fusebytes](./CDCE9XX_PROGRAMMER_FW_v1/fusebytes.txt) correctly. 

#### Program the CDCE913 (DFO) on the MultiRegion PCB

Use the [GUI](./CDCE9XX_Programmer_GUI_v1.1/CDCE9XX_PROGRAMMER.exe) (software written by micro) in order to program the PLL. This is required in order to get the DeJitter and on-board color carrier switch working. To program the PLL perform the following steps:

##### modding board not installed

- Set V-target jumper on programmer to 5V
- Connect programmer to modding board
  (make sure that the connector is matched otherwise you may harm your modding board!)
- Connect USB cable to Windows PC
- Launch [programmer app](./CDCE9XX_Programmer_GUI_v1.1/CDCE9XX_PROGRAMMER.exe)
- Load [hex-file](./clockpro/snes_multi_region.hex) for the CDCE913 by clicking on _Load Configuration File_
- Click on _Program CDCE9xx_ button
- Disconnect everything once finished

##### modding board installed in SNES

- Leave V-target jumper open
- Connect programmer to modding board
  (make sure that the connector is matched otherwise you may harm your modding board and/or the DFO programmer!)
- Connect USB cable to Windows PC
- Switch on SNES
- Launch [programmer app](./CDCE9XX_Programmer_GUI_v1.1/CDCE9XX_PROGRAMMER.exe)
- Load [hex-file](./clockpro/snes_multi_region.hex) for the CDCE913 by clicking on _Load Configuration File_
- Click on _Program CDCE9xx_ button
- Disconnect everything once finished

#### Picture

![](../pics/dfo_pcb.jpg)



