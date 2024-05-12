`include "LFSR.sv"
`timescale 1ns/1ps
module lfsr_testbench ();
   reg count_en;
   reg [3:0] count_to;
   reg load;
   reg clk_n;
   reg rst;
   wire done;
   lfsr LFSR(count_en, count_to, load, clk_n, rst, done);
   always #10 clk_n=~clk_n;
   initial begin
      $dumpfile("wave.vcd");
      $dumpvars(0);
      clk_n=1;
      rst=0;
      load=0;
      count_to=4'b1011;
      count_en=0;
      #20
      rst=1;
      #20
      rst=0;
      #20
      load=1;
      #20
      load=0;
      count_en=1;
      #100
      count_to=0101;
      load=1;
      #20
      load=0;
      #100
      $finish;
   end
endmodule
