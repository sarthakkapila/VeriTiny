////////////////////////////////////////////////////////////////////////////////////////////
/// Program to realize Register B                                                       ///
///////////////////////////////////////////////////////////////////////////////////////////

module regB #(
    parameter DATA_WIDTH = 32,
    parameter NUM_PORTS = 3
) (
    input clk,
    input reset,
    input load_b,
    input [DATA_WIDTH-1:0] data_in_b,
    output [DATA_WIDTH-1:0] data_out_b1,
    output [DATA_WIDTH-1:0] data_out_b2,
    output [DATA_WIDTH-1:0] data_out_b3
);

reg [DATA_WIDTH-1:0] reg_b, pipeline_reg_b1, pipeline_reg_b2;
reg [DATA_WIDTH-1:0] reg_b_parallel1, pipeline_reg_b1_parallel1, pipeline_reg_b2_parallel1;
reg [DATA_WIDTH-1:0] reg_b_parallel2, pipeline_reg_b1_parallel2, pipeline_reg_b2_parallel2;

always @(posedge clk) begin
    if (reset) begin
        reg_b <= 0;
        pipeline_reg_b1 <= 0;
        pipeline_reg_b2 <= 0;
        reg_b_parallel1 <= 0;
        pipeline_reg_b1_parallel1 <= 0;
        pipeline_reg_b2_parallel1 <= 0;
        reg_b_parallel2 <= 0;
        pipeline_reg_b1_parallel2 <= 0;
        pipeline_reg_b2_parallel2 <= 0;
    end else begin
        if (load_b) begin
            reg_b <= data_in_b;
            pipeline_reg_b1 <= data_in_b;
            pipeline_reg_b2 <= pipeline_reg_b1;
            reg_b_parallel1 <= data_in_b;
            pipeline_reg_b1_parallel1 <= data_in_b;
            pipeline_reg_b2_parallel1 <= pipeline_reg_b1_parallel1;
            reg_b_parallel2 <= data_in_b;
            pipeline_reg_b1_parallel2 <= data_in_b;
            pipeline_reg_b2_parallel2 <= pipeline_reg_b1_parallel2;
        end else begin
            pipeline_reg_b1 <= reg_b;
            pipeline_reg_b2 <= pipeline_reg_b1;
            pipeline_reg_b1_parallel1 <= reg_b_parallel1;
            pipeline_reg_b2_parallel1 <= pipeline_reg_b1_parallel1;
            pipeline_reg_b1_parallel2 <= reg_b_parallel2;
            pipeline_reg_b2_parallel2 <= pipeline_reg_b1_parallel2;
        end
    end
end

assign data_out_b1 = pipeline_reg_b2;
assign data_out_b2 = pipeline_reg_b2_parallel1;
assign data_out_b3 = pipeline_reg_b2_parallel2;

endmodule
////////////////////////////////////////////////////////////////////////////////////////////
///                 	        Program to realise Register B                           ///
///////////////////////////////////////////////////////////////////////////////////////////


