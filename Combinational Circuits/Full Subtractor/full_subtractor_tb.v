`timescale 1ns / 1ps

module full_subtractor_tb;
    
    reg A, B, Bin;
    
    wire Difference, Borrow;
    
    
    full_subtractor_dataflow uut (
        .A(A), 
        .B(B), 
        .Bin(Bin), 
        .Difference(Difference), 
        .Borrow(Borrow)
    );

    initial begin
        $dumpfile("full_subtractor.vcd");
        $dumpvars(0, full_subtractor_tb);
        
        // Test all input combinations
        A = 0; B = 0; Bin = 0; #10;
        A = 0; B = 0; Bin = 1; #10;
        A = 0; B = 1; Bin = 0; #10;
        A = 0; B = 1; Bin = 1; #10;
        A = 1; B = 0; Bin = 0; #10;
        A = 1; B = 0; Bin = 1; #10;
        A = 1; B = 1; Bin = 0; #10;
        A = 1; B = 1; Bin = 1; #10;
        
        $finish;
    end
     
     initial begin
        $monitor("Time=%0t | A=%b B=%b Bin=%b | Difference=%b Borrow=%b", $time, A, B, Bin, Difference, Borrow);
    end

endmodule
