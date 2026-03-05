module half_sub(
    input A, B,
    output Y, B_out
);

    assign Y = (
        A ^ B
     );
     
     assign B_out = (
        ~A & B
     );

endmodule