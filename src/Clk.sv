module CLK (
    input logic clk_in,                     // Input clock signal
    output logic clk_out,                   // Output clock signal
);

reg [31:0] count;                           // Counter to divide the clock frequency for lower clk_out
                                            // Dividing the clock frequency into smaller parts using a counter allows you to provide different clock speeds to different parts of the digital system based on their requirements.
                                            
always @(posedge clk_in) begin
    if (count == 50000000) begin            // 0.5 second for 100 MHz
        clk_out <= ~clk_out;                // output clock
        count <= 0;                         // Reset counter
    end else begin
        count <= count + 1;                 // Increment counter
    end
end

endmodule