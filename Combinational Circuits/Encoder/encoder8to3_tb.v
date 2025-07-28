module encoder8to3_tb;
    reg [7:0] in;
    wire [2:0] out;

    encoder8to3 uut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("encoder8to3_out.vcd");
        $dumpvars(0, encoder8to3_tb);
        $monitor("Time=%0t | in=%b | out=%b", $time, in, out);

        // Valid test cases
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;

        // Invalid test cases
        in = 8'b00000000; #10; // No bit high
        in = 8'b00000110; #10; // Multiple bits high

        $finish;
    end
endmodule
