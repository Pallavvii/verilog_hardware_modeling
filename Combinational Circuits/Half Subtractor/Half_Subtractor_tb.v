`timescale 1ns / 1ps

module tb_half_subtractor;
    // Inputs
    reg A, B;
    // Outputs
    wire Diff, Borrow;

    
    half_subtractor_dataflow uut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin
        $dumpfile("half_subtractor.vcd");
        $dumpvars(0, tb_half_subtractor);
        
        // Test all input combinations
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b | Diff=%b Borrow=%b", $time, A, B, Diff, Borrow);
    end
endmodule
