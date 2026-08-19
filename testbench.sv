`timescale 1ns/1ps

module ripple_carry_adder_tb;

reg [7:0] A;
reg [7:0] B;
reg       Cin;

wire [7:0] Sum;
wire       Cout;

ripple_carry_adder DUT (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    $dumpfile("ripple_carry_adder.vcd");
    $dumpvars(0, ripple_carry_adder_tb);

    // Test 1
    A = 8'b00000000;
    B = 8'b00000000;
    Cin = 1'b0;
    #10;

    // Test 2
    A = 8'b00001111;
    B = 8'b00000001;
    Cin = 1'b0;
    #10;

    // Test 3
    A = 8'b10101010;
    B = 8'b01010101;
    Cin = 1'b0;
    #10;

    // Test 4
    A = 8'b11111111;
    B = 8'b00000001;
    Cin = 1'b0;
    #10;

    // Test 5
    A = 8'b11111111;
    B = 8'b11111111;
    Cin = 1'b0;
    #10;

    // Test 6
    A = 8'b01010101;
    B = 8'b00110011;
    Cin = 1'b1;
    #10;

    $finish;

end

endmodule