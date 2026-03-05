module twos_compliment(
    input  [7:0] A,
    output [7:0] Y
);

    wire [7:0] inv;
    wire C1, C2, C3, C4, C5, C6, C7, C8;

    // Step 1: invert bits
    assign inv = ~A;

    // Step 2: add 1 using full adders

    full_adder FA0(inv[0], 1'b1, 1'b0, Y[0], C1);
    full_adder FA1(inv[1], 1'b0, C1,   Y[1], C2);
    full_adder FA2(inv[2], 1'b0, C2,   Y[2], C3);
    full_adder FA3(inv[3], 1'b0, C3,   Y[3], C4);
    full_adder FA4(inv[4], 1'b0, C4,   Y[4], C5);
    full_adder FA5(inv[5], 1'b0, C5,   Y[5], C6);
    full_adder FA6(inv[6], 1'b0, C6,   Y[6], C7);
    full_adder FA7(inv[7], 1'b0, C7,   Y[7], C8);

endmodule