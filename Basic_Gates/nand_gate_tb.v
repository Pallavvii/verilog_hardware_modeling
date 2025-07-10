`timescale 1ns/1ps

module nand_gate_tb;

reg a, b;
wire y;

nand_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("nand_dump.vcd");       // for GTKWave
    $dumpvars(0, nand_gate_tb);       // dump all signals

    $display("A B | Y");
    $display("---------");

    a = 0; b = 0; #10;
    $display("%b %b | %b", a, b, y);

    a = 0; b = 1; #10;
    $display("%b %b | %b", a, b, y);

    a = 1; b = 0; #10;
    $display("%b %b | %b", a, b, y);

    a = 1; b = 1; #10;
    $display("%b %b | %b", a, b, y);

    $finish;
end

endmodule
