module demux_tb;
    reg din;
    reg [1:0] sel;
    wire [3:0] out;

    demux uut (.din(din), .sel(sel), .out(out));

    initial begin
        $dumpfile("demux_out.vcd");
        $dumpvars(0, demux_tb);
        $monitor("Time=%0t | din=%b sel=%b | out=%b", $time, din, sel, out);

        din = 1;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        
        din = 0;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end
endmodule
