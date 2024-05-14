/////////////////////////////////////////////////////////////////////
//                        ALU Design                              //
////////////////////////////////////////////////////////////////////

module alu (

    input wire [63:0] A,
    input wire [63:0] B,
    input wire [2:0] opcode,
    output reg [63:0] C,

    output reg fZ,       // zero flag
    output reg fC,       // carry flag
    output reg fN,       // negative flag
    output reg fV,       // overflow flag
    );
    always @(*) begin
        case (opcode)
        4'b0000: C = A + B;         // ADD
        4'b0001: C = A - B;         // SUB
        4'b0010: C = A * B;         // MUL
        4'b0011: C = A / B;         // DIV
        default: C = 64'hx;         // Undefined (default)
    endcase

      fZ = (C == 0);

      fC = (C < A) || (C < B);

      fN = C[63];

      fV = ((A[63] == B[63]) && (C[63] != A[63])) ||
           ((A[63] != B[63]) && (C[63] == A[63]));

end
initial begin
   $dumpfile("dump.vcd");
   $dumpvars;
end

endmodule
