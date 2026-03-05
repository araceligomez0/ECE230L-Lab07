module top(
    input  [9:0] sw,
    output [13:0] led
);

// ---------------- HALF SUBTRACTOR ----------------
half_sub HS(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
);

//ONE'S COMPLEMENT ADDER
wire [3:0] A_ones = {sw[5], sw[4], sw[3], sw[2]};
wire [3:0] B_ones = {sw[9], sw[8], sw[7], sw[6]};
wire [3:0] S_ones;

ones_compliment OC(
    .A(A_ones),
    .B(B_ones),
    .S(S_ones)
);

assign led[5:2] = S_ones;


//TWO'S COMPLEMENT CONVERTER
wire [7:0] TC_in = {sw[9], sw[8], sw[7], sw[6],
                    sw[5], sw[4], sw[3], sw[2]};
wire [7:0] TC_out;

twos_compliment TC(
    .A(TC_in),
    .TC(TC_out)
);

assign led[13:6] = TC_out;

endmodule
