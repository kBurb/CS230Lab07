module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0]Y
);

wire [0:3] carry;
wire [3:0] APlusB;
wire around;
wire [0:3] second_carry;

//first addition
    full_adder lsb_inter(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(APlusB[0]),
        .Cout(carry[0])
    );
    
    full_adder bit1_inter(
        .A(A[1]),
        .B(B[1]),
        .Cin(carry[0]),
        .Y(APlusB[1]),
        .Cout(carry[1])
    );
    
    full_adder bit2_inter(
        .A(A[2]),
        .B(B[2]),
        .Cin(carry[1]),
        .Y(APlusB[2]),
        .Cout(carry[2])
    );
    
    full_adder msb_inter(
        .A(A[3]),
        .B(B[3]),
        .Cin(carry[2]),
        .Y(APlusB[3]),
        .Cout(carry[3])
    );
    
    assign around = carry[3];
    //second addition
    
    full_adder lsb(
        .A(APlusB[0]),
        .B(1'b0),
        .Cin(around),
        .Y(Y[0]),
        .Cout(second_carry[0])
    );
    
    full_adder bit1(
        .A(APlusB[1]),
        .B(1'b0),
        .Cin(second_carry[0]),
        .Y(Y[1]),
        .Cout(second_carry[1])
    );
    
        full_adder bit2(
        .A(APlusB[2]),
        .B(1'b0),
        .Cin(second_carry[1]),
        .Y(Y[2]),
        .Cout(second_carry[2])
    );
    
        full_adder msb(
        .A(APlusB[3]),
        .B(1'b0),
        .Cin(second_carry[2]),
        .Y(Y[3]),
        .Cout(second_carry[3])
    );

endmodule