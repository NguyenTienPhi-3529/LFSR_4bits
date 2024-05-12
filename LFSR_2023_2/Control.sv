module control (
   input [3:0] in_LFSR,
   output [3:0] out_LFSR
);
   assign out_LFSR[3]=in_LFSR[2];
   assign out_LFSR[2]=in_LFSR[1];
   assign out_LFSR[1]=in_LFSR[0];
   assign out_LFSR[0]=in_LFSR[2]^in_LFSR[3];
endmodule
