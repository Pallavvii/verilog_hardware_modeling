`timescale 1ns/1ps
module decoder2to4_tb;

reg [1:0] in;
reg en;
wire [3:0] out;

// Instantiate the decoder
decoder2to4 uut (
    .in(in),
    .en(en),
    .out(out)
);

initial begin
    $dumpfile("decoder2to4_out.vcd");
    $dumpvars(0, decoder2to4_tb);

    // Test all input combinations with enable = 1
    en = 1;

    in = 2'b00; #10;
    in = 2'b01; #10;
    in = 2'b10; #10;
    in = 2'b11; #10;

    // Test with enable = 0
    en = 0; in = 2'b10; #10;

    $finish;
end

endmodule
