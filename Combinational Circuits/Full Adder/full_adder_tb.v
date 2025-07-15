module full_adder_tb;
    reg A, B, Cin;
    wire Sum, Carry;

    // Instantiate the Full Adder Structural model
    full_adder_structural uut (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Carry(Carry)
    );

    initial begin
        $dumpfile("full_adder_structural.vcd");
        $dumpvars(0, full_adder_tb);

        $display("A B Cin | Sum Carry");
        $display("-------------------");

        A=0; B=0; Cin=0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        A=0; B=0; Cin=1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        A=0; B=1; Cin=0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        A=0; B=1; Cin=1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        A=1; B=0; Cin=0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        A=1; B=0; Cin=1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        A=1; B=1; Cin=0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        A=1; B=1; Cin=1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Carry);

        $finish;
    end
endmodule
