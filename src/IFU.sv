//////////////////////////////////////////////////////////////////////////////
//             Fetching and prepare instruction for execution               //
//////////////////////////////////////////////////////////////////////////////

module InstructionFetchUnit (
    input  logic          clk,             // Clock signal
    input  logic [31:0]   pc,              // Program counter
    input  logic          branch_taken,    // Control signal indicating a branch instruction is taken
    input  logic [31:0]   branch_target,   // Target address for branch instruction
    input  logic          stall,           // Control signal to stall instruction fetching
    output logic [31:0]   instruction      // Fetched instruction
);