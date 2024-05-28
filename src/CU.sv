/////////////////////////////////////////////////////
//             Control unit design                //
///////////////////////////////////////////////////`

module ControlUnit (
    input logic [3:0] opcode,
    output logic reg_write,
    output logic mem_read,
    output logic mem_write,
    output logic branch_taken
);

    always_comb begin
        case (opcode)
            4'b0000: begin // ADD
                reg_write = 1;
                mem_read = 0;
                mem_write = 0;
                branch_taken = 0;
            end
            4'b0001: begin // SUB
                reg_write = 1;
                mem_read = 0;
                mem_write = 0;
                branch_taken = 0;
            end
            4'b0010: begin // AND
                reg_write = 1;
                mem_read = 0;
                mem_write = 0;
                branch_taken = 0;
            end
            4'b0011: begin // OR
                reg_write = 1;
                mem_read = 0;
                mem_write = 0;
                branch_taken = 0;
            end
            4'b0100: begin // Branch (example)
                reg_write = 0;
                mem_read = 0;
                mem_write = 0;
                branch_taken = 1;
            end
            default: begin
                reg_write = 0;
                mem_read = 0;
                mem_write = 0;
                branch_taken = 0;
            end
        endcase
    end
endmodule
