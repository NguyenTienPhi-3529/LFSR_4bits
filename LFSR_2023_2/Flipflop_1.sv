module flipflop_1 (
   input d,
   input clk,
   input rst,
   output reg q
);
   always_ff @(negedge clk or posedge rst) begin
      if(rst==1) q<=0;
      else q<=d;
   end
endmodule
