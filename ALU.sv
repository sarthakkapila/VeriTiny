/////////////////////////////////////////////////////////////////////
// This describes the ALU of the design ////
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
        4'b0000: result = A + B;         // ADD
        4'b0001: result = A - B;         // SUB
        4'b0010: result = A * B;         // MUL
        4'b0011: result = A / B;         // DIV
        default: result = 64'hx;         // Undefined (default)
    endcase

    fZ = (result == 0);

    fC = (result < A) || (result < B);

    fN = result[63];

    fV = ((A[63] == B[63]) && (result[63] != A[63])) ||
         ((A[63] != B[63]) && (result[63] == A[63]));

end
endmodule
