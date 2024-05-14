///////////////////////////////////////////////////////////////////////////////////////////
///                 	     Making a basic register                                    ///
///////////////////////////////////////////////////////////////////////////////////////////

module RegA (clk, loadA, dataAin, dataAout);
input clk;                                      // Clock input
input loadA;                                    // Control signal ot load data into register
input [31:0] dataAin;                           // 32 bit databus input
output [31:0] dataAout;                         // 32 bit databus output

reg [31:0] dataAout;                            // Holds ouput of the RegA
reg [31:0] tempA;                               // Temp register for storing previous values

always @(clk, loadA)                            // Triggered when concurrent statement changes
begin
    @(posdege clk)                              // Waits for a positive signal from clock
    begin
        if (loadA == 1) begin                   // Signal High == 1
            dataAout <= dataAin;                // dataAin assigns to outputReg dataAout
            tempA <= dataAin;

        else (loadA == 0) begin                 // Signal Low == 1
            dataAout <= tempA;                  // Assingns previous stored value to outputReg dataAout
        end
    end
end
endmodule

