module mux2to1(
    input a, b, sel,
    output y
);
    assign y = (sel) ? b : a;
endmodule

module mux8to1(
    input [7:0] in,
    input [2:0] sel,
    output out
);
    wire [3:0] mux_level1;
    wire [1:0] mux_level2;
    
    // First Level: 4 instances of 2:1 mux
    mux2to1 m0 (.a(in[0]), .b(in[1]), .sel(sel[0]), .y(mux_level1[0]));
    mux2to1 m1 (.a(in[2]), .b(in[3]), .sel(sel[0]), .y(mux_level1[1]));
    mux2to1 m2 (.a(in[4]), .b(in[5]), .sel(sel[0]), .y(mux_level1[2]));
    mux2to1 m3 (.a(in[6]), .b(in[7]), .sel(sel[0]), .y(mux_level1[3]));

    // Second Level: 2 instances
    mux2to1 m4 (.a(mux_level1[0]), .b(mux_level1[1]), .sel(sel[1]), .y(mux_level2[0]));
    mux2to1 m5 (.a(mux_level1[2]), .b(mux_level1[3]), .sel(sel[1]), .y(mux_level2[1]));

    // Third Level: final instance
    mux2to1 m6 (.a(mux_level2[0]), .b(mux_level2[1]), .sel(sel[2]), .y(out));
endmodule
