`timescale 1ns/100ps
module testbench;
 reg [1:0] x,y;
 wire z;
comparator C2 (.x(x), .y(y), .z(z));
initial 
begin
  $dumpfile("comp.vcd");
  $dumpvars(0,testbench);
  x= 2'b01; y= 2'b00;
  #10 x= 2'b10 ; y= 2'b10;
  #10 x= 2'b01; y= 2'b11;
end
  initial 
    begin
       $monitor("t=%0t x=%0d y=%0d z=%0d", $time, x, y, z);
     end
  endmodule