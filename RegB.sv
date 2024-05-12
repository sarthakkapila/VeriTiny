////////////////////////////////////////////////////////////////////////////////////////////
///                 	        Program to realise Register B                           ///
///////////////////////////////////////////////////////////////////////////////////////////

module regB #(
    parameter DATA_WIDTH = 32
) (
    input clk,
    input reset,
    input load_b,
    input [DATA_WIDTH-1:0] data_in_b,
    output [DATA_WIDTH-1:0] data_out_b
);

reg [DATA_WIDTH-1:0] reg_b, pipeline_reg_b1, pipeline_reg_b2;

always @(posedge clk) begin
    if (reset) begin
        reg_b <= 0;
        ripeline_reg_b1 <= 0;
        pipeline_reg_b2 <= 0;
    end else begin
        if (load_b) begin
            reg_b <= data_in_b;
            pipeline_reg_b1 <= data_in_b;
            pipeline_reg_b2 <= pipeline_reg_b1;
        end else begin
            pipeline_reg_b1 <= reg_b;
            pipeline_reg_b2 <= pipeline_reg_b1;
        end
    end
end

assign data_out_b = pipeline_reg_b2;
endmodule

////////////////////////////////////////////////////////////////////////////////////////////
///                 	        Program to realise Register B                           ///
///////////////////////////////////////////////////////////////////////////////////////////


