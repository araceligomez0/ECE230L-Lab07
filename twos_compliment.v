module twos_compliment(
    input  [7:0] A,
    output [7:0] TC
);

wire [7:0] inv;
assign inv = ~A;

wire c1, c2, c3, c4, c5, c6, c7, c8;

// Add 1 using ripple-carry full adders
full_adder F0(inv[0], 1'b1, 1'b0, TC[0], c1);
full_adder F1(inv[1], 1'b0, c1,    TC[1], c2);
full_adder F2(inv[2], 1'b0, c2,    TC[2], c3);
full_adder F3(inv[3], 1'b0, c3,    TC[3], c4);
full_adder F4(inv[4], 1'b0, c4,    TC[4], c5);
full_adder F5(inv[5], 1'b0, c5,    TC[5], c6);
full_adder F6(inv[6], 1'b0, c6,    TC[6], c7);
full_adder F7(inv[7], 1'b0, c7,    TC[7], c8);

endmodule
