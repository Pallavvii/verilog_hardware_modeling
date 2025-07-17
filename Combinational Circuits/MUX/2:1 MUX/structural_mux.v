module mux_structural (input a, input b, input sel, output y);
    wire nsel, a_and, b_and;
    
    not (nsel, sel);
    and (a_and, a, nsel);
    and (b_and, b, sel);
    or  (y, a_and, b_and);
endmodule
