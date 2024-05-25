module RegisterFile (
    input  logic [4:0] read_address1,     // Read address Reg1
    input  logic [4:0] read_address2,     // Read address Reg2
    input  logic [4:0] write_address,     // Write address
    input  logic        write_enable,     // Enable signal
    input  logic [31:0] write_data,       // Data to be written
    output logic [31:0] read_data1,       // Data read Reg1
    output logic [31:0] read_data2        // Data read Reg2
);

logic [31:0] registers [31:0];           // Array of 32 registers, each 32 bits wide

// Read
assign read_data1 = registers[read_address1];
assign read_data2 = registers[read_address2];

// Write
always @ (posedge clk_in) begin
    if (write_enable) begin
        registers[write_address] <= write_data;
    end
end

endmodule
