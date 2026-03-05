module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] SUM
);

wire C1, C2, C3, C4;
wire [3:0] temp;

// First addition
full_adder FA0(A[0], B[0], 1'b0, temp[0], C1);
full_adder FA1(A[1], B[1], C1, temp[1], C2);
full_adder FA2(A[2], B[2], C2, temp[2], C3);
full_adder FA3(A[3], B[3], C3, temp[3], C4);

// End-around carry stage
wire C5, C6, C7;

full_adder FA4(temp[0], C4, 1'b0, SUM[0], C5);
full_adder FA5(temp[1], 1'b0, C5, SUM[1], C6);
full_adder FA6(temp[2], 1'b0, C6, SUM[2], C7);
full_adder FA7(temp[3], 1'b0, C7, SUM[3], );

endmodule