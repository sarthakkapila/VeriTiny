# VeriTiny

A minimal CPU implementation in Verilog, aimed at highlighting the general principles of all these architectures.


> [!IMPORTANT]
> The project is still under construction.
> Learning all the core concepts as I code.

## Basic Architecture

### CPU Design

- Core Design

### A single core of the cpu has the following components:

- Arithmetic Logic Unit (ALU): Implements arithmetic and logical operations.
- Registers: Stores operands, intermediate results, and control information.
- Control Unit (CU): Coordinates instruction execution and generates control signals.
- Decoder: Decodes instructions and generates control signals for execution.
- Encodes: Encodes
- Buses: Connects functional units and manages data flow within the core.
- Interfaces: Interfaces for accessing instruction and data memory.
- Pipeline: If using a pipelined architecture, implement stages such as fetch, decode, execute, memory access, and write-back.
- Cache: Stores recently fetched instructions & data.
- Microcode ROM: Stores microcode instructions for complex instructions.
- Power Management Unit: Controls power consumption based on system activity.

##### Will update the arch as I learn more

