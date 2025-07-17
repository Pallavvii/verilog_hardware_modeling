
module mux_dataflow (input a, input b, input sel, output y);
    assign y = sel ? b : a;
endmodule
