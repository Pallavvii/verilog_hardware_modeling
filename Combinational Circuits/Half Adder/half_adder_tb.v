module half_adder_tb;

    reg A, B;
    wire SUM, CARRY;

        half_adder_dataflow uut (A, B, SUM, CARRY);
    
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0, half_adder_tb);

        $display("A B | SUM CARRY");
        $display("---------------");

        A = 0; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, SUM, CARRY);

        A = 0; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, SUM, CARRY);

        A = 1; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, SUM, CARRY);

        A = 1; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, SUM, CARRY);

        $finish;
    end

endmodule
