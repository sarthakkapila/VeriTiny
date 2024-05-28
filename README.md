# VeriTiny
A minimal CPU implementation in Verilog, aimed at highlighting the general principles of all these architectures.

> [!IMPORTANT]
> This repo contains sv code for a softcore 32-bit ARM cpu.

# Overview 
This project aims to design and implement a pipelined softcore ARM CPU using Verilog HDL. The CPU architecture includes several components such as the Instruction Fetch Unit (IFU), Instruction Decoder, Register File, Arithmetic Logic Unit (ALU), Data Memory Interface, Control Logic, and Pipeline Registers. The pipelined architecture divides the CPU operations into stages to improve performance by allowing multiple instructions to be processed simultaneously.



## Components

### Instruction Fetch Unit (IFU)
- Fetches instructions from memory based on the program counter (PC) and feeds them into the instruction decoder.
- Responsible for managing the PC and fetching instructions from memory.

### Instruction Decoder
- Decodes fetched instructions and generates control signals to coordinate the operation of other units in the processor.
- Extracts opcode, register addresses, and immediate values from instructions.

### Register File
- Contains a set of registers for storing data, including general-purpose registers, status registers, and the program counter (PC).
- Manages read and write operations to registers.

### Arithmetic Logic Unit (ALU)
- Performs arithmetic and logical operations on data from the register file.
- Executes operations based on the opcode received from the instruction decoder.

### Data Memory Interface
- Manages the interaction between the processor core and data memory (RAM, ROM, etc.).
- Handles address generation, data transfer, and control signals for memory operations.

### Control Logic
- Coordinates the flow of data and control signals within the processor core.
- Generates control signals based on the opcode to control the operation of other units.

### Pipeline Registers
- Hold intermediate values between pipeline stages to facilitate concurrent execution of instructions.
- Enable data transfer between pipeline stages.

### Pipeline Stages
- Fetch (IF)
- Decode (ID)
- Execute (EX)
- Memory (MEM)
- Write Back (WB)

### Hazard Handling
#### Forwarding Unit
Detects data hazards and forwards data from the execution stage to earlier stages to resolve hazards.

#### Hazard Detection Unit
Detects hazards and stalls the pipeline to prevent data hazards.

## Architecture
- The architecture consists of a pipelined design with five stages: Fetch (IF), Decode (ID), Execute (EX), Memory (MEM), and Write Back (WB).
- Each stage is implemented as a separate module with its own set of pipeline registers.
- Control signals are passed between stages to coordinate the flow of data and control signals.
- Hazard detection and forwarding units are integrated to handle hazards and ensure smooth operation of the pipeline.

## References
- Verilog code examples provided in this document.
- Additional resources on CPU architecture, Verilog HDL, and pipelining techniques.
