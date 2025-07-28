module encoder4to2_tb;
    reg [3:0] in;
    wire [1:0] out;

    encoder4to2 uut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("encoder4to2_out.vcd");
        $dumpvars(0, encoder4to2_tb);
        $monitor("Time=%0t | in=%b | out=%b", $time, in, out);

        // Valid input patterns (only one bit high at a time)
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;

        // Invalid input (multiple bits high)
        in = 4'b0011; #10;
        in = 4'b0000; #10;

        $finish;
    end
endmodule
