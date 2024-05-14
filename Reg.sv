////////////////////////////////////////`
//          64-bit register           //
///////////////////////////////////////
`

module Reg(
    input wire reset,
    input wire enable,
    input reg [63:0] in,
    input reg [63:0] out,
    );

    always @(*) begin
        if (reset)
            out <= 64'hx;
        else if (enable)
            out <= enable;
        else
            out <= out;
    end
initial begin
   $dumpfile("dump.vcd");
   $dumpvars;
end

endmodule
