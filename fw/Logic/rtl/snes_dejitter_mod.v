// MIT License
// 
// Copyright (c) 2017-2018 Markus Hiienkari
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
// This source was modified by borti4938 to meet the requirements of the SNES
// Multi-Region project! Modifications are
//
// Copyright (c) 2019 Peter Bartmann
//
// and marked with a comment starting with 'borti'
//

`define EDGE_SENSITIVE_CLKEN

module snes_dejitter_mod(
    input MCLK_EXT_i,  // borti: MCLK_XTAL_i removed, clock switch at MCLK_EXT_i by DFO
    input MCLK_SEL_i,  // Output clock/csync mode: De-jitter/NTSC (0), Bypass/PAL (1)
    input CSYNC_i,
    output GCLK_o,     // borti: MCLK_XTAL_o removed as not needed
    output CSYNC_o
);

wire mclk_ntsc = MCLK_EXT_i; // borti: MCLK_XTAL_i removed, so use MCLK_EXT_i
wire mclk_ntsc_dejitter = mclk_ntsc & gclk_en;
wire mclk_pal = MCLK_EXT_i;

assign GCLK_o = MCLK_SEL_i ? mclk_pal : mclk_ntsc_dejitter;
assign CSYNC_o = MCLK_SEL_i ? CSYNC_i : csync_dejitter;

// borti: removed line 'assign MCLK_XTAL_o = ~MCLK_XTAL_i;'

reg [10:0] h_cnt;
reg [2:0] g_cyc;
reg CSYNC_L, CSYNC_LL;  // borti - rename csync_prev and introduce secound buffer state to relax logic
reg csync_dejitter;
reg gclk_en;


always @(posedge MCLK_EXT_i) begin
end
// borti - end: resync CSYNC to new clock

always @(posedge mclk_ntsc) begin
    if ((h_cnt >= 1024) && (CSYNC_LL==1'b1) && (CSYNC_L==1'b0)) begin // borti: use CSYNC_LL and CSYNC_L
        h_cnt <= 0;
        if (h_cnt == 340*4-1)
            g_cyc <= 4;
        else
            csync_dejitter <= CSYNC_L; // borti: use CSYNC_L
    end else begin
        h_cnt <= h_cnt + 1'b1;
        if (g_cyc > 0)
            g_cyc <= g_cyc - 1'b1;
        if (g_cyc <= 1)
            csync_dejitter <= CSYNC_L; // borti: use CSYNC_L
    end

    CSYNC_L <= CSYNC_i;   // borti: buffer CSYNC_i to CSYNC_L
    CSYNC_LL <= CSYNC_L;  // borti: rename csync_prev to CSYNC_LL and use 1x buffered input here
end

`ifdef EDGE_SENSITIVE_CLKEN
//Update clock gate enable signal on negative edge
always @(negedge mclk_ntsc) begin
    gclk_en <= (g_cyc == 0);
end
`else
//ATF1502AS macrocells support D latch mode,
//enabling level sensitive update of gclk_en during negative phase
always @(*) begin
    if (!mclk_ntsc)
        gclk_en <= (g_cyc == 0);
end
`endif

endmodule
