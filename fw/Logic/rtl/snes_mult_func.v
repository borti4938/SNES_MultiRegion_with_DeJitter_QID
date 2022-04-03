// MIT License
// 
// Copyright (c) 2019 Peter Bartmann
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
// 
//
// Comment:
//
// This source merges the de-jitter mod by Markus Hiienkari (see copyright note
// in snes_dejitter_mod.v) with the region patch mod which was initially designed
// with discrete logic elements.
//

// `define LEGACY // modding board versions V20190509 and earlier

module snes_mult_func(
  input NPARD,
  input [7:0] ADDRESS_BUS_B,
  input EN_REGPATCH,
  output NDRIVE_D4,

  // some selections
  input SEL_SNES_1CHIP,   // switches between 1Chip (high) and 3Chip (low)
  input PALMODE,          // PAL high and NTSC low (same as PPU status)
  output [1:0] NPALMODE,  // PAL low and NTSC high (for video encoder)
  
  // Clock input and output
  input MCLK_base_i,    // base clock (either 21.47727MHz (NTSC) or 17.734475 (PAL))
  input MCLK_PAL_ext_i, // extended PAL base clock (21.28137MHz) for 3Chip consoles)
  output MCLK_o, 
  output ColorCarrier_o,
  output ColorCarrier_opt_o,

  // De-Jitter
  input DEJITTER_BYPASS, // NTSC: DEJITTER_BYPASS = 0, PAL: DEJITTER_BYPASS = 1
  input CSYNC_i,
  output [1:0] CSYNC_o
  
  `ifdef LEGACY
    // dummy
    ,
    output dummy // older PCB version with PAL color carrier input from CDCE913
  `endif
);


// region patch implementation
assign NDRIVE_D4 = ~&{EN_REGPATCH,!NPARD,(ADDRESS_BUS_B == 8'h3f)}; // if all conditions are true, NDRIVE_D4 goes low


// de-jitter
wire MCLK_DEJ_w;
wire CSYNC_w;

snes_dejitter_mod dejitter_u(
  .MCLK_EXT_i(MCLK_base_i),
  .MCLK_SEL_i(DEJITTER_BYPASS),
  .CSYNC_i(CSYNC_i),
  .GCLK_o(MCLK_DEJ_w),
  .CSYNC_o(CSYNC_w)
);

assign MCLK_o = (SEL_SNES_1CHIP | NPALMODE_w) ? MCLK_DEJ_w : MCLK_PAL_ext_i;
assign CSYNC_o = {2{CSYNC_w}};


// color carrier
wire NPALMODE_w = ~PALMODE;
reg ColorCarrier_int, ColorCarrier_opt_int;
reg [1:0] div_cnt, div_opt_cnt;

always @(posedge MCLK_base_i) begin
  if (div_cnt[NPALMODE_w]) begin
    div_cnt <= 2'b00;
    ColorCarrier_int <= ~ColorCarrier_int;
  end else begin
    div_cnt <= div_cnt + 1'b1;
  end
end
always @(posedge MCLK_DEJ_w) begin
  if (div_opt_cnt[NPALMODE_w]) begin
    div_opt_cnt <= 2'b00;
    ColorCarrier_opt_int <= ~ColorCarrier_opt_int;
  end else begin
    div_opt_cnt <= div_opt_cnt + 1'b1;
  end
end

assign ColorCarrier_o = ColorCarrier_int;
assign ColorCarrier_opt_o = ColorCarrier_opt_int;
assign NPALMODE = {2{NPALMODE_w}};

`ifdef LEGACY
  // dummy output
  // (CPLD does not support high z on unused pins. So do it manually here to support older PCBs)
  assign dummy = 1'bz;
`endif

endmodule
