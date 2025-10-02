

module d_ff_tb;

reg D, CLK;
wire Q, Qbar;

// Instantiate the D Flip-Flop
d_ff uut (
    .D(D),
    .CLK(CLK),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation (10ns period)
initial CLK = 0;
always #5 CLK = ~CLK;

initial begin
    // Create waveform file
    $dumpfile("d_ff_out.vcd");
    $dumpvars(0, d_ff_tb);

    // Initialize inputs
    D = 0;

    // Test sequence
    #2  D = 0;
    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 1;
    #10 D = 0;
    #20 $finish;
end

initial begin
    $monitor("Time=%0t | CLK=%b | D=%b | Q=%b Qbar=%b", $time, CLK, D, Q, Qbar);
end

endmodule
