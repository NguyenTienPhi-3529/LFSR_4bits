module flipflop_4 (
   input [3:0] d,
   input clk,
   input rst,
   output reg [3:0] q
);
   always @(negedge clk or posedge rst) begin
      if(rst==1) q<=4'b0000;
      else q<=d;
   end
endmodule