// D Flip-Flop with asynchronous set and reset

module dff (
    input d,
    input set,
    input reset,
    input clk,
    output reg q,
    output qbar
);

assign qbar = ~q;

always @(posedge clk or negedge set or negedge reset)
begin
    if (!reset)
        q <= 0;
    else if (!set)
        q <= 1;
    else
        q <= d;
end

endmodule
