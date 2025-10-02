module sr_latch_tb;

reg s,r;
wire q, qbar;

// Instantiate SR Latch
sr_latch uut (.s(s),
    .r(r),
    .q(q),
    .qbar(qbar));

initial begin
    $monitor("Time=%0t | S=%b R=%b | Q=%b Qbar=%b",$time,s,r,q,qbar);
    $dumpfile("sr_latch_out.vcd");
    $dumpvars(0,sr_latch_tb);
   
    // Test sequence
    s=0; r=0; #10; // Hold
    s=1; r=0; #10; // Set
    s=0; r=0; #10; // Hold
    s=0; r=1; #10; // Reset
    s=0; r=0; #10; // Hold
    s=1; r=1; #10; // Invalid
   $finish;

end

endmodule
