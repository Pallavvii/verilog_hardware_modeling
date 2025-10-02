module sr_latch (
    input s, r,
    output reg q,
    output reg qbar
);

always @(*)
  begin
    case ({s,r})
        2'b00: ; // Hold (no change)
        2'b01: begin
            q    <= 0;
            qbar <= 1;
        end
        2'b10: begin
            q    <= 1;
            qbar <= 0;
        end
        2'b11: begin
            q    <= 1'bx;
            qbar <= 1'bx;
        end
    endcase
end

endmodule
