

module d_latch_tb;

reg d, en;
wire q;

// Instantiate D Latch
d_latch uut (
    .d(d),
    .en(en),
    .q(q)
);

initial begin
    $dumpfile("d_latch_out.vcd");
    $dumpvars(0, d_latch_tb);

    $monitor("Time=%0t | EN=%b D=%b | Q=%b", $time, en, d, q);

    // Test sequence
    en = 0; d = 0; #10;  // Hold
    en = 1; d = 0; #10;  // Transparent, Q=0
    en = 1; d = 1; #10;  // Transparent, Q=1
    en = 0; d = 0; #10;  // Hold (Q stays 1)
    en = 1; d = 0; #10;  // Transparent, Q=0
    en = 0; d = 1; #10;  // Hold (Q stays 0)
    en = 1; d = 1; #10;  // Transparent, Q=1
    $finish;
end

endmodule
