module mux_41 (
  input en,
  input done,
  input [3:0] pre,
  input [3:0] lfsr,
  output [3:0] next
);
 assign next=(en==1&&done==0)?lfsr:pre;
endmodule
