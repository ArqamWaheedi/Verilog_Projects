module simple_adder (a,b,cin,s,cout);
    input [2:0] a,b;
    output [2:0] s;
    input cin;
    output cout;

    assign {cout,s} = a+b+cin;
endmodule
