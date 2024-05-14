////////////////////////////////////////
//                                    //
//             Basics                 //
//                                    //
////////////////////////////////////////

// Declares a module, modueles are like building blocks for sv designs
module HiMom (clk, loadA, dataA, dataAout)
module HelloWorld;
    initial begin
        $display("Hello, World!");
        $finish;
    end
endmodule

// Verilog starts with the module name followed by the parameter list
module dff( d,clk,q,q_b);
input d,clk;		// Define the input
output q,q_b;		// Define the output
wire d,clk;		// To use as input, the signals must be declared as wire
reg q,q_b;		// To use as output, the signals must be declared as resgister

// Wire is used for signals that just connect two points
// Registers are sued to define signals that need to store and output the signals

always@(posedge clk)	// During the positive edge of clock
begin
	q<=d;		// Assigns q to D
	q_b<= !d;	// Assigns q_b to not of D
end
endmodule

input [3:0] write_reg, // Represents a port named write_reg wit ha 4-bit bus means value from 0 to 15(2^-4 - 1)
input [31:0] write_data, // Represents a port anmed write_data with a 32-bit bus means vlaues from 0 to 2^32 - 1
