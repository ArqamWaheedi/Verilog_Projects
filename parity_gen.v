module parity_gen (
    input x,
    input clk,
    output reg z
);

reg even_odd;// MACHINE STATE
parameter EVEN = 1'b0, ODD = 1'b1;

always @(posedge clk) begin
    case (even_odd)
        EVEN: even_odd <= (x) ? ODD : EVEN;
        ODD:  even_odd <= (x) ? EVEN : ODD;
        default: even_odd <= EVEN;
    endcase
end

// Output logic
always @(even_odd) begin
    case (even_odd)
        EVEN: z = 0;  // Even number of 1's seen so far
        ODD:  z = 1;  // Odd number of 1's seen so far
        default: z = 0;
    endcase
end

endmodule
