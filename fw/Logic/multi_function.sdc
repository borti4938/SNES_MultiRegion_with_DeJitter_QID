## MIT License
## 
## Copyright (c) 2019 Peter Bartmann
## 
## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:
## 
## The above copyright notice and this permission notice shall be included in all
## copies or substantial portions of the Software.
## 
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
## SOFTWARE.
## 
##
## Comment:
##
## This source extends / merges the de-jitter mod by Markus Hiienkari (see copyright
## note in snes_dejitter.v) with the region patch mod which was initially designed
## with discrete logic elements.
##


create_clock -period 21.477272MHz -name mclk_snes_ntsc_virt
create_clock -period 21.28137MHz -name mclk_snes_pal_virt

set_clock_groups -exclusive -group {mclk_snes_ntsc_virt} -group {mclk_snes_pal_virt}

set snes_data_delay_min 0.0
set snes_data_delay_max 8.0
set_input_delay -clock mclk_snes_ntsc_virt -min $snes_data_delay_min [get_ports {ADDRESS_BUS_B* NPARD}]
set_input_delay -clock mclk_snes_ntsc_virt -max $snes_data_delay_max [get_ports {ADDRESS_BUS_B* NPARD}]
set_input_delay -clock mclk_snes_pal_virt -min $snes_data_delay_min [get_ports {ADDRESS_BUS_B* NPARD}] -add
set_input_delay -clock mclk_snes_pal_virt -max $snes_data_delay_max [get_ports {ADDRESS_BUS_B* NPARD}] -add

# define maximum delay depending on critical path
# (consider only NPARD as it is set one clock cycle after ADDRESS_BUS_B is set)
set snes_wc_period 45.0
set snes_tsu 5.0
set hct125_ten 25.0
set out_rp_dly_max [expr {$snes_wc_period - $snes_data_delay_max - $hct125_ten - $snes_tsu}]

set_max_delay $out_rp_dly_max -from [get_ports {NPARD}] -to [get_ports {NDRIVE_D4}]
#set_max_delay 10 -from [get_ports PALMODE] -to [get_ports {NPALMODE*}]

set_false_path -from [get_ports {EN_REGPATCH PALMODE}]
set_false_path -to [get_ports {NDRIVE_D4 NPALMODE*}]



create_clock -period 21.477272MHz -name mclk_ntsc_ext_i [get_ports MCLK_base_i]
create_generated_clock -name mclk_ntsc_ext_o -source [get_ports MCLK_base_i] -master_clock mclk_ntsc_ext_i [get_ports MCLK_o]
create_clock -period 21.28137MHz -name mclk_pal0_ext_i [get_ports MCLK_PAL_ext_i] -add
create_generated_clock -name mclk_pal0_ext_o -source [get_ports MCLK_PAL_ext_i] -master_clock mclk_pal0_ext_i [get_ports MCLK_o] -add
create_clock -period 17.73445MHz -name mclk_pal1_ext_i [get_ports MCLK_base_i] -add
create_generated_clock -name mclk_pal1_ext_o -source [get_ports MCLK_base_i] -master_clock mclk_pal1_ext_i [get_ports MCLK_o] -add

set_clock_groups -exclusive -group {mclk_ntsc_ext_i mclk_ntsc_ext_o} -group {mclk_pal0_ext_i mclk_pal0_ext_o} -group {mclk_pal1_ext_i mclk_pal1_ext_o}

# CSYNC_i is launched on falling edge of GCLK_o
set_input_delay 3 -clock mclk_ntsc_ext_o -clock_fall [get_ports CSYNC_i]
set_false_path -from [get_ports CSYNC_i] -to [get_clocks {mclk_pal* mclk_ntsc_ext_o}]


# Constrain feedthrough path timing to 10ns
set_max_delay 10 -from [get_ports CSYNC_i] -to [get_ports CSYNC_o*]
set_max_delay 10 -from [get_ports {MCLK_base_i MCLK_PAL_ext_i}] -to [get_ports MCLK_o]


# Ignore timing of the following signals
set_false_path -from [get_clocks {mclk_pal0_ext_i mclk_pal1_ext_i}] -to [get_registers dejitter_u|*]
set_false_path -from [get_registers dejitter_u|*] -to [get_clocks mclk_pal0_ext_o]
set_false_path -from [get_registers dejitter_u|*] -to [get_clocks mclk_pal1_ext_o]
set_false_path -from [get_ports {DEJITTER_BYPASS}]
set_false_path -to [get_ports {CSYNC_o* MCLK_o}]


set_false_path -to [get_ports {ColorCarrier_o ColorCarrier_opt_o}]
