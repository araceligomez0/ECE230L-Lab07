module full_adder(
    input A, B, Cin,// Declare your A/B inputs
    output Y, Cout// Declare Y output
);

    assign Y = (
        (~A & (B ^ Cin)) | (A & ~(B ^ Cin))
     );
     
     assign Cout = (
        (~A & (B & Cin)) | (A & (B | Cin))
     );

endmodule