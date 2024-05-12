////////////////////////////////////////////////////////////////////////////////////////////
///                 	        Program to realise Register B                           ///
///////////////////////////////////////////////////////////////////////////////////////////

module regA #(
    parameter DATA_WIDTH = 32
) (
    input clk,
    input reset,
    input load_a,
    input [DATA_WIDTH-1:0] data_in_a,
    output [DATA_WIDTH-1:0] data_out_a
);

reg [DATA_WIDTH-1:0] reg_a, pipeline_reg_a1, pipeline_reg_a2;

always @(posedge clk) begin
    if (reset) begin
        reg_a <= 0;
        pipeline_reg_a1 <= 0;
        pipeline_reg_a2 <= 0;
    end else begin
        if (load_a) begin
            reg_a <= data_in_a;
            pipeline_reg_a1 <= data_in_a;
            pipeline_reg_a2 <= pipeline_reg_a1;
        end else begin
            pipeline_reg_a1 <= reg_a;
            pipeline_reg_a2 <= pipeline_reg_a1;
        end
    end
end

assign data_out_a = pipeline_reg_a2;
endmodule

////////////////////////////////////////////////////////////////////////////////////////////
///                 	        Program to realise Register B                           ///
///////////////////////////////////////////////////////////////////////////////////////////


