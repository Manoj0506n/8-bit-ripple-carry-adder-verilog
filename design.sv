// 1-bit Full Adder
module full_adder (
    input  A,
    input  B,
    input  Cin,
    output Sum,
    output Cout
);

assign Sum  = A ^ B ^ Cin;
assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule


// 8-bit Ripple Carry Adder
module ripple_carry_adder (
    input  [7:0] A,
    input  [7:0] B,
    input        Cin,
    output [7:0] Sum,
    output       Cout
);

wire [7:0] Carry;

full_adder FA0 (
    .A(A[0]), .B(B[0]), .Cin(Cin),
    .Sum(Sum[0]), .Cout(Carry[0])
);

full_adder FA1 (
    .A(A[1]), .B(B[1]), .Cin(Carry[0]),
    .Sum(Sum[1]), .Cout(Carry[1])
);

full_adder FA2 (
    .A(A[2]), .B(B[2]), .Cin(Carry[1]),
    .Sum(Sum[2]), .Cout(Carry[2])
);

full_adder FA3 (
    .A(A[3]), .B(B[3]), .Cin(Carry[2]),
    .Sum(Sum[3]), .Cout(Carry[3])
);

full_adder FA4 (
    .A(A[4]), .B(B[4]), .Cin(Carry[3]),
    .Sum(Sum[4]), .Cout(Carry[4])
);

full_adder FA5 (
    .A(A[5]), .B(B[5]), .Cin(Carry[4]),
    .Sum(Sum[5]), .Cout(Carry[5])
);

full_adder FA6 (
    .A(A[6]), .B(B[6]), .Cin(Carry[5]),
    .Sum(Sum[6]), .Cout(Carry[6])
);

full_adder FA7 (
    .A(A[7]), .B(B[7]), .Cin(Carry[6]),
    .Sum(Sum[7]), .Cout(Cout)
);

endmodule