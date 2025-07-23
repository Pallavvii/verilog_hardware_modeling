module demux1to4(
    input din,
    input [1:0] sel,
    output [3:0] out
);
    assign out[0] = (~sel[1] & ~sel[0]) & din;
    assign out[1] = (~sel[1] &  sel[0]) & din;
    assign out[2] = ( sel[1] & ~sel[0]) & din;
    assign out[3] = ( sel[1] &  sel[0]) & din;
endmodule

module demux1to8(
    input din,
    input [2:0] sel,
    output [7:0] out
);
    wire upper, lower;
    wire [3:0] out_upper, out_lower;

    // First demux divides din into two halves based on sel[2]
    assign lower = (~sel[2]) & din;
    assign upper = ( sel[2]) & din;

    // Lower 4 outputs
    demux1to4 d0 (
        .din(lower),
        .sel(sel[1:0]),
        .out(out[3:0])
    );

        demux1to4 d1 (
        .din(upper),
        .sel(sel[1:0]),
        .out(out[7:4])
    );
endmodule
