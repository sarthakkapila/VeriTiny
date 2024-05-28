/////////////////////////////////////////////////////////////////////
//                        ALU Design                              //
////////////////////////////////////////////////////////////////////

module alu (

    input wire [31:0] A,
    input wire [31:0] B,
    input wire [3:0] opcode,
    output reg [32:0] C,

    output reg fZ,       // zero flag
    output reg fC,       // carry flag
    output reg fN,       // negative flag
    output reg fV,       // overflow flag
    );
    always @(*) begin
        case (opcode)
        4'b0000: C = A + B;         
        4'b0001: C = A - B;         
        4'b0010: C = A & B;         
        4'b0011: C = A | B;         
        default: C = 32'b0;         // Undefined (default)
    endcase

      fZ = (C == 0);

      fC = (C < A) || (C < B);

      fN = C[63];

      fV = ((A[31] == B[31]) && (C[31] != A[31])) ||
           ((A[31] != B[31]) && (C[31] == A[31]));

end
endmodule
