module half_sub(
    input  wire A,
    input  wire B,
    output wire Y,        // Difference
    output wire Borrow    // Borrow out
);

    // Difference is XOR
    assign Y = A ^ B;

    // Borrow occurs when A=0 and B=1
    assign Borrow = (~A) & B;

endmodule
