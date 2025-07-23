module demux1to8_tb;
    reg din;
    reg [2:0] sel;
    wire [7:0] out;

    // Instantiate the DUT (Device Under Test)
    demux1to8 uut (
        .din(din),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("demux1to8_out.vcd");
        $dumpvars(0, demux1to8_tb);
        $monitor("Time=%0t | din=%b sel=%b | out=%b", $time, din, sel, out);

        din = 1;

        // Test all selector values
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        // Test with din = 0
        din = 0; sel = 3'b000; #10;
        sel = 3'b101; #10;

        $finish;
    end
endmodule
