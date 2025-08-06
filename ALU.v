module ALU (
    input  [15:0] X, Y,
    output [15:0] Z,
    output Sign, Zero, Carry, Parity, Overflow
);

    wire [16:0] sum; 

    assign sum = X + Y;         
    assign Z = sum[15:0];
    assign Carry = sum[16];

    assign Sign = Z[15];
    assign Zero = (Z == 16'b0);
    assign Parity = ~^Z;        
    assign Overflow = (X[15] & Y[15] & ~Z[15]) | (~X[15] & ~Y[15] & Z[15]);

endmodule
