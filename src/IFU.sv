//////////////////////////////////////////////////////////////////////////////
//             Fetching and prepare instruction for execution               //
//////////////////////////////////////////////////////////////////////////////

module InstructionFetchUnit (
    input logic clk,
    input logic reset,
    input logic branch_taken,
    input logic [31:0] branch_target,
    output logic [31:0] pc,
    output logic [31:0] instruction
);

    logic [31:0] pc_reg;
    logic [31:0] instruction_memory [0:255];

    initial begin
        instruction_memory[0] = 32'hE3A00001; // Example ARM instruction
        instruction_memory[1] = 32'hE3A01002; // Example ARM instruction
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            pc_reg <= 32'b0;
        end else begin
            if (branch_taken) begin
                pc_reg <= branch_target;
            end else begin
                pc_reg <= pc_reg + 4;
            end
        end
    end

    assign pc = pc_reg;

    always_ff @(posedge clk) begin
        instruction <= instruction_memory[pc_reg >> 2];
    end
endmodule
