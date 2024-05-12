////////////////////////////////////////////////////////////////////////////////////////////
/// Program to realize Register C                                                         ///
///////////////////////////////////////////////////////////////////////////////////////////

module regC #(
    parameter DATA_WIDTH = 32,
    parameter NUM_PORTS = 2
) (
    input clk,
    input reset,
    input load_c,
    input [DATA_WIDTH-1:0] data_in_c,
    output [DATA_WIDTH-1:0] data_out_c1,
    output [DATA_WIDTH-1:0] data_out_c2
);

reg [DATA_WIDTH-1:0] reg_c, pipeline_reg_c1, pipeline_reg_c2;
reg [DATA_WIDTH-1:0] reg_c_parallel, pipeline_reg_c1_parallel, pipeline_reg_c2_parallel;

always @(posedge clk) begin
    if (reset) begin
        reg_c <= 0;
        pipeline_reg_c1 <= 0;
        pipeline_reg_c2 <= 0;
        reg_c_parallel <= 0;
        pipeline_reg_c1_parallel <= 0;
        pipeline_reg_c2_parallel <= 0;
    end else begin
        if (load_c) begin
            reg_c <= data_in_c;
            pipeline_reg_c1 <= data_in_c;
            pipeline_reg_c2 <= pipeline_reg_c1;
            reg_c_parallel <= data_in_c;
            pipeline_reg_c1_parallel <= data_in_c;
            pipeline_reg_c2_parallel <= pipeline_reg_c1_parallel;
        end else begin
            pipeline_reg_c1 <= reg_c;
            pipeline_reg_c2 <= pipeline_reg_c1;
            pipeline_reg_c1_parallel <= reg_c_parallel;
            pipeline_reg_c2_parallel <= pipeline_reg_c1_parallel;
        end
    end
end

assign data_out_c1 = pipeline_reg_c2;
assign data_out_c2 = pipeline_reg_c2_parallel;

endmodule

////////////////////////////////////////////////////////////////////////////////////////////
///                 	        Program to realise Register C                           ///
///////////////////////////////////////////////////////////////////////////////////////////


