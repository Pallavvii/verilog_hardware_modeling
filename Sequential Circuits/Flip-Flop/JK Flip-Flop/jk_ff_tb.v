
module jk_ff_tb;

reg J, K, CLK;
wire Q, Qbar;

// Instantiate JK Flip-Flop
jk_ff uut (
    .J(J),
    .K(K),
    .CLK(CLK),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation (10ns period)
initial CLK = 0;
always #5 CLK = ~CLK;

initial begin
    $dumpfile("jk_ff_out.vcd");
    $dumpvars(0, jk_ff_tb);

    // Initialize inputs
    J = 0; K = 0;

    // Test sequence
    #5  J = 0; K = 0;   // Hold
    #10 J = 0; K = 1;   // Reset
    #10 J = 1; K = 0;   // Set
    #10 J = 1; K = 1;   // Toggle
    #10 J = 1; K = 1;   // Toggle again
    #10 J = 0; K = 1;   // Reset
    #20 $finish;
end

initial begin
    $monitor("Time=%0t | CLK=%b | J=%b | K=%b | Q=%b Qbar=%b",
              $time, CLK, J, K, Q, Qbar);
end

endmodule
