# VeriTiny
## Basic Architecture

### CPU Design

- Instruction Memory
The instruction memory will hold the address from the program counter and immediate values.

- Registers
A, B - Contain necessary data that needs to be loaded
C - will contain the data that will recieve data from the ALU

- ALU
The ALU was required to perform arithmetic, logical or shift operation based on the opcode recieved. Individual units were first designed followed by the top model.

- Data Memory
This unit was mainly used to store the data or immediate value for the registers.

- Program Counter
This unit holds the address of the next instruction to be executed.

- Controller
This unit incorporates all the units using port mapping technique.

- CPU
Design of the 16/whatever i choose to be cpu.

- Encoder
Converts info to binary


## Side notes/info

- Clock is the like a calibration system so that the whole system is in a synchronization and to reduce errors etc.

- CPU bit width 16 means it can handle 16 bits at a time

#### Soon add GPU as well started with CPU as its comparitively easier!
