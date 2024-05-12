`include "Control.sv"
`include "Flipflop_1.sv"
`include "Flipflop_4.sv"
`include "Mux_21.sv"
`include "Mux_41.sv"
module lfsr (
   input count_en,
   input [3:0] count_to,
   input load,
   input clk_n,
   input rst,
   output done
);
  wire[3:0] count_pre, count_next, count_lfsr, count;
  wire Ddone;
  mux_41 mux41(count_en, done, count_pre, count_lfsr, count);
  mux_21 mux21(count_to, load, count, count_next);
  flipflop_4 next(count_next, clk_n, rst, count_pre);
  control sLeft(count_pre, count_lfsr);
  assign Ddone=count_next[0]&count_next[1]&count_next[2]&count_next[3];
  flipflop_1 ffdone(Ddone, clk_n, rst, done);
endmodule