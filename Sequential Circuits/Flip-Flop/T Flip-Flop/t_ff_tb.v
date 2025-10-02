
module t_ff_tb;

reg T, CLK;
wire Q, Qbar;

// Instantiate T Flip-Flop
t_ff uut (
    .T(T),
    .CLK(CLK),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation (10ns period)
initial CLK = 0;
always #5 CLK = ~CLK;

initial begin
    $dumpfile("t_ff_out.vcd");
    $dumpvars(0, t_ff_tb);

    // Initialize
    T = 0;

    // Test sequence
    #10 T = 0;   // Hold
    #10 T = 1;   // Toggle
    #10 T = 1;   // Toggle again
    #10 T = 0;   // Hold
    #10 T = 1;   // Toggle
    #20 $finish;
end

initial begin
    $monitor("Time=%0t | CLK=%b | T=%b | Q=%b | Qbar=%b",
              $time, CLK, T, Q, Qbar);
end

endmodule
