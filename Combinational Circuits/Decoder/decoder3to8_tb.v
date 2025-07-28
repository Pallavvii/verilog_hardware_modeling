`timescale 1ns/1ps
module decoder3to8_tb;

reg [2:0] in;
reg en;
wire [7:0] out;

// Instantiate the decoder
decoder3to8 uut (
    .in(in),
    .en(en),
    .out(out)
);

initial begin
    $dumpfile("decoder3to8_out.vcd");
    $dumpvars(0, decoder3to8_tb);

    // Enable = 1, test all inputs
    en = 1;
    in = 3'b000; #10;
    in = 3'b001; #10;
    in = 3'b010; #10;
    in = 3'b011; #10;
    in = 3'b100; #10;
    in = 3'b101; #10;
    in = 3'b110; #10;
    in = 3'b111; #10;

    // Enable = 0, test one input
    en = 0;
    in = 3'b101; #10;

    $finish;
end

endmodule
