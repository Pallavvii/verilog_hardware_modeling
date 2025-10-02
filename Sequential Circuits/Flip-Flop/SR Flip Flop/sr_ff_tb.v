
module sr_ff_tb;

reg S, R, CLK;
wire Q, Qbar;

// Instantiate the SR Flip-Flop
sr_ff uut (
    .S(S),
    .R(R),
    .CLK(CLK),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation: 10ns period
initial CLK = 0;
always #5 CLK = ~CLK;  // toggles every 5ns

initial begin
    $dumpfile("sr_ff_out.vcd");
    $dumpvars(0, sr_ff_tb);

    // Initialize inputs
    S = 0; R = 0;

    // Test sequence
    #2 S=1; R=0;       // Set on next clock
    #10 S=0; R=0;      // Hold
    #10 S=0; R=1;      // Reset
    #10 S=0; R=0;      // Hold
    #10 S=1; R=1;      // Invalid state
    #10 S=0; R=0;      // Hold
    #20 $finish;
end

initial begin
    $monitor("Time=%0t | CLK=%b | S=%b R=%b | Q=%b Qbar=%b", 
             $time, CLK, S, R, Q, Qbar);
   end

endmodule
