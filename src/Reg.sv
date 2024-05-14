////////////////////////////////////////////////////////`
//                  64-bit register                  //
//////////////////////////////////////////////////////

module Reg(
    input wire reset,
    input wire enable,
    input wire [63:0] in,
    output reg [63:0] out
);

    always @* begin
        if (reset)
            out <= 64'hx;
        else if (enable)
            out <= in;
    end

    initial begin
       $dumpfile("dump.vcd");
       $dumpvars;
    end

endmodule
