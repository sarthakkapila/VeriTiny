/////////////////////////////////////////////////////
//             Control unit design                //
///////////////////////////////////////////////////`

module ControlUnit(
    input wire clk,
    input wire fZ,                  // Zero flag
    input wire fN,                  // Negative flad
    input wire fC,                  // Carry flag
    input wire fV,                  // Value flag

    input reg [63:] RegA,
    input reg [63:] RegB,

    output wire cuSignal,
    output wire outSignal
    )

