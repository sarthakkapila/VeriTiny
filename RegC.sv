////////////////////////////////////////////////////////////////////////////////////////////
///                 	        Program to realise Register C                           ///
///////////////////////////////////////////////////////////////////////////////////////////

module regC #(
    parameter DATA_WIDTH = 32
) (
    input clk,
    input reset,
    input load_c,
    input [DATA_WIDTH-1:0] data_in_c,
    output [DATA_WIDTH-1:0] data_out_c
);

reg [DATA_WIDTH-1:0] reg_c, pipeline_reg_c1, pipeline_reg_c2;

always @(posedge clk) begin
    if (reset) begin
        reg_c <= 0;
        ripeline_reg_c1 <= 0;
        pipeline_reg_c2 <= 0;
    end else begin
        if (load_c) begin
            reg_c <= data_in_c;
            pipeline_reg_c1 <= data_in_c;
            pipeline_reg_c2 <= pipeline_reg_c1;
        end else begin
            pipeline_reg_c1 <= reg_c;
            pipeline_reg_c2 <= pipeline_reg_c1;
        end
    end
end

assign data_out_c = pipeline_reg_c2;
endmodule

////////////////////////////////////////////////////////////////////////////////////////////
///                 	        Program to realise Register C                           ///
///////////////////////////////////////////////////////////////////////////////////////////


