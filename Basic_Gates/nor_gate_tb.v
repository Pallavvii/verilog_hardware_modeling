`timescale 1ns/1ps

module nor_gate_tb;

reg a, b;
wire y;

// Instantiate the NOR gate
nor_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    // Dump waveform
    $dumpfile("nor_dump.vcd");
    $dumpvars(0, nor_gate_tb);

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
