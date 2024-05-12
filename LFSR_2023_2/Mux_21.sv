module mux_21 (
  input [3:0] countto,
  input load,
  input [3:0] in_lfsr,
  output [3:0] out_lfsr
);
  assign out_lfsr=load?countto:in_lfsr;
endmodule
