/////////////////////////////////////////////////////////////////////
// This describes the ALU of the design ////
////////////////////////////////////////////////////////////////////

module alu( a, b, opcode, mode, outalu, za, zb, eq, gt, lt);
input [31:0] a;
input [31:0] b;
input [3:0] opcode;
input mode;
output [63:0] outalu;
output za, zb, eq, gt, lt;

reg [63:0] outalu;
reg za, zb, eq, gt, lt;

wire [63:0] outau;
wire [63:0] outlu;
wire tza, tzb, teq, tgt, tlt;

arith a1 (.a(a), .b(b), .opcode(opcode), .outau(outau));
logic l1 (.a(a), .b(b), .opcode(opcode), .outlu(outlu), .za(tza), .zb(tzb), .eq(teq), .gt(tgt), .lt(tlt));

always@(a,b,mode,opcode)
begin
	if(mode == 0) begin
	outalu = outau;
	end
	else if (mode == 1) begin
	outalu = outlu;
	end
	else begin
	outalu = 64'h00000000;
	end

	za = tza;
	zb = tzb;
	eq = teq;
	gt = tgt;
	lt = tlt;
end

endmodule
