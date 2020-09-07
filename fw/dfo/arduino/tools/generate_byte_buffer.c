
// Copyright (c) 2020 Peter Bartmann

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

const char filename_hex_in[] = "dfo.hex";
const char filename_txt_in[] = "dfo.txt";
const char filename_out[] = "bytes4arduino.txt";

int main() {
  char c;
  char reg_byte = 0;
  bool parse_hex = true;
  int idx;
  int reg_cnt = 0;
  
  FILE *fptr_in, *fptr_out;
  if ((fptr_in = fopen(filename_hex_in, "r")) == NULL) {
    printf("dfo.hex not found. Try to find dfo.txt.\n");
    parse_hex = false;
    if ((fptr_in = fopen(filename_txt_in, "r")) == NULL) {
      printf("dfo.txt not found either.\n");
      printf("Error! opening file.\n");
      exit(1);
    }
  }
  if ((fptr_out = fopen(filename_out, "w")) == NULL) {
    printf("Error! opening file.\n");
    // Program exits if file pointer returns NULL.
    fclose(fptr_in);
    exit(2);
  }

  fprintf(fptr_out,"const byte dfo_regs[32] = {");
  // reads text until newline is encountered
  if (parse_hex) {
    int num_data_line;
    char check_sum;
    while ((c = getc(fptr_in)) != EOF) {
      if (c == ':') { // line begin
        num_data_line = 0;
        for (idx = 0; idx < 2; idx++) {  // get number of data per line
          if ((c = getc(fptr_in)) == EOF) {
            fclose(fptr_in);
            fclose(fptr_out);
            exit(3);
          }
          num_data_line = num_data_line + (strtol(&c,NULL,16) << (4-4*idx));
        }
        check_sum = num_data_line;
        
        for (idx = 0; idx < 2*2; idx++) {  // address (assume that it is sorted - so just pop)
          if ((c = getc(fptr_in)) == EOF) {
            fclose(fptr_in);
            fclose(fptr_out);
            exit(3);
          }
          check_sum = check_sum + (strtol(&c,NULL,16) << (4-4*(idx % 2)));
        }
        
        for (idx = 0; idx < 2; idx++) {  // read data type
          if ((c = getc(fptr_in)) == EOF) {
            fclose(fptr_in);
            fclose(fptr_out);
            exit(3);
          }
          if (reg_cnt < 32) {
            if (c != '0') { // data format not supported?
              fclose(fptr_in);
              fclose(fptr_out);
              exit(4);
            }
          } else {
            if ((c != '0' && idx == 0) || (c != '1' && idx == 1)) { // expect last line but it isn't
              fclose(fptr_in);
              fclose(fptr_out);
              exit(5);
            }
          }
          check_sum = check_sum + (strtol(&c,NULL,16) << (4-4*idx));
        }
        
        for (idx = 0; idx < 2*num_data_line; idx++) {  // read data
          if ((c = getc(fptr_in)) == EOF) {
            fclose(fptr_in);
            fclose(fptr_out);
            exit(3);
          }
          if ((idx % 2) == 0) {
            reg_byte = (strtol(&c,NULL,16) << 4);
          } else {
            reg_byte = reg_byte + strtol(&c,NULL,16);
            fprintf(fptr_out,"0x%02x",reg_byte & 0xff);
            reg_byte = 0;
            reg_cnt++;
            if (reg_cnt < 32) {
              fprintf(fptr_out,", ");
              if ((reg_cnt % 8) == 0) fprintf(fptr_out,"\\\n                           ");
            }
          }
          check_sum = check_sum + (strtol(&c,NULL,16) << (4-4*(idx % 2)));
        }
        
        check_sum = 0xff - check_sum + 0x1;
        for (idx = 0; idx < 2; idx++) {
          if ((c = getc(fptr_in)) == EOF) {
            fclose(fptr_in);
            fclose(fptr_out);
            exit(3);
          }
          check_sum = check_sum - (strtol(&c,NULL,16) << (4-4*idx));
        }
        
        if (check_sum != 0) {
            fclose(fptr_in);
            fclose(fptr_out);
            exit(6);
        }       
      }
    }
  } else {
    while ((c = getc(fptr_in)) != EOF) {
      if (c == '-') {
        if ((c = getc(fptr_in)) == EOF) {
          fclose(fptr_in);
          fclose(fptr_out);
          exit(3);
        }
        reg_byte = 0;
        for (idx = 0; idx < 8; idx++) {
          if ((c = getc(fptr_in)) == EOF) {
            fclose(fptr_in);
            fclose(fptr_out);
            exit(4);
          }
          if (c == '1') reg_byte = reg_byte + (1<<(7-idx));
        }
        fprintf(fptr_out,"0x%02x",reg_byte & 0xff);
        reg_cnt++;
        if (reg_cnt < 32) {
          fprintf(fptr_out,", ");
          if ((reg_cnt % 8) == 0) fprintf(fptr_out,"\\\n                           ");
        } else {
          break;
        }
      }
    }
  }
  
  fprintf(fptr_out,"};\n");
  printf("File %s successfully generated!\n",filename_out);
  fclose(fptr_in);
  fclose(fptr_out);

  return 0;
}