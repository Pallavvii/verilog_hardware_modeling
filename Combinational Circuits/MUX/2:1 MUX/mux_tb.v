`timescale 1ns/1ps
module mux_tb;
    reg a, b, sel;
    wire y_dataflow, y_behavioral, y_structural;

    mux_dataflow d1 (.a(a), .b(b), .sel(sel), .y(y_dataflow));
    mux_behavioral b1 (.a(a), .b(b), .sel(sel), .y(y_behavioral));
    mux_structural s1 (.a(a), .b(b), .sel(sel), .y(y_structural));

    initial begin
        $dumpfile("mux_out.vcd");       
        $dumpvars(0, mux_tb);            

        $monitor("a=%b b=%b sel=%b | dataflow=%b behavioral=%b structural=%b",
                 a, b, sel, y_dataflow, y_behavioral, y_structural);

        a = 0; b = 0; sel = 0; #10;
        a = 0; b = 1; sel = 0; #10;
        a = 1; b = 0; sel = 1; #10;
        a = 1; b = 1; sel = 1; #10;
        $finish;
    end
endmodule
