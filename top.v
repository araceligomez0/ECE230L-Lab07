module top (
    input [14:0] sw,
    output [13:0] led
);

    half_sub u_half_sub (
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .B_out(led[1])
    );
    
    ones_compliment u_ones_compliment (
        .A(sw[5:2]),
        .B(sw[9:6]),
        .SUM(led[5:2])
    );
    
    twos_compliment u_twos_compliment (
        .A(sw[9:2]),
        .Y(led[13:6])
    );

endmodule