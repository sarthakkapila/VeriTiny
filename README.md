# VeriTiny

My aim is to make a chip specially designed for AI.

## Basic Architecture

### CPU Design

- Core Design

A single core of the cpu has the following components:

Arithmetic Logic Unit (ALU): Implements arithmetic and logical operations.
Registers: Stores operands, intermediate results, and control information.
Control Unit (CU): Coordinates instruction execution and generates control signals.
Decoder: Decodes instructions and generates control signals for execution.
Encodes: Encodes
Buses: Connects functional units and manages data flow within the core.
Interfaces: Interfaces for accessing instruction and data memory.
Pipeline: If using a pipelined architecture, implement stages such as fetch, decode, execute, memory access, and write-back.
Cache: Stores recently fetched instructions & data.
Microcode ROM: Stores microcode instructions for complex instructions.
Power Management Unit: Controls power consumption based on system activity.


## Side notes/info

- Clock is the like a calibration system so that the whole system is in a synchronization and to reduce errors etc.

- CPU bit width 16 means it can handle 16 bits at a time

#### Soon add GPU as well started with CPU as its comparitively easier!
