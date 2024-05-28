module DataMemory (
    input logic clk,
    input logic [31:0] address,
    input logic [31:0] write_data,
    input logic mem_write,
    input logic mem_read,
    output logic [31:0] read_data
);

    logic [31:0] data_memory [0:255];

    always_ff @(posedge clk) begin
        if (mem_write) begin
            data_memory[address >> 2] <= write_data;
        end
    end

    always_comb begin
        if (mem_read) begin
            read_data = data_memory[address >> 2];
        end else begin
            read_data = 32'b0;
        end
    end
endmodule
