# VeriTiny

## Have no idea how will this work but here's a step by step plan"

- Learn Verilog: Familiarize yourself with the Verilog hardware description language, as it is the language used for developing this. You can find many online resources and tutorials to learn Verilog.
- Understand Computer Architecture: Study computer architecture concepts, such as CPU design, instruction sets, memory hierarchies, and parallelism. This will help you understand the fundamental principles of GPU architecture.
- Study GPU Architecture: Research and learn about modern GPU architectures, SIMD (Single Instruction, Multiple Data) processing, and the basic building blocks of GPUs, such as compute units, schedulers, memory controllers, and caches.
- Define Your Goals: Decide on the goals and scope of your project. Do you want to focus on a specific aspect of GPU architecture, or do you want to create a more comprehensive implementation?
- Design Your Architecture: Based on your goals and the knowledge you've gained, design your minimal GPU architecture. Determine the components you need, such as the device control register, dispatcher, compute cores, memory controllers, and cache.
- Define Your Instruction Set Architecture (ISA): Decide on the instructions your GPU will support, such as arithmetic operations, memory access instructions, branching instructions, and any other instructions necessary for your target applications (e.g., matrix operations).
- Implement in Verilog: Start implementing your GPU architecture in Verilog, following a modular approach. Begin with the core components, such as the compute cores, ALUs, LSUs, and register files.
- Test and Verify: As you implement each component, write testbenches to verify its functionality. You can use tools like Icarus Verilog and cocotb for simulation and testing.
- Integrate Components: Integrate the individual components into a complete GPU system, including the dispatcher, memory controllers, and cache (if applicable).
- Develop Kernels: Write kernel programs (similar to the matrix addition and multiplication kernels in tiny-gpu) to test and demonstrate the functionality of your GPU implementation.
- Simulate and Debug: Set up a simulation environment and run your kernels on your GPU implementation. Debug any issues that arise and optimize your design as needed.
- Document and Share: Thoroughly document your project, including the architecture, ISA, and any relevant implementation details. Consider sharing your work with the community, as the tiny-gpu project did, to contribute to educational resources and open-source hardware development.

## Basic Architecture


### GPU:
Stuff need to design

Device control register -> Stores the thread count (no. of thread needed to launch kernel)

Dispatcher for DCR -> Manages distribution of threads

Compute cores

Memory Controller -> Manages communicatio between cores and memory of the system

Cache -> recently accessed Data


Global Memory: External memory divided into data memory (8-bit addressable, 8-bit data)

Program memory: (8-bit addressable, 16-bit instructions)

Core:

Scheduler: Manages execution of instructions for a block of threads
Fetcher: Fetches instructions from program memory
Decoder: Decodes instructions into control signals
Register Files: Dedicated register files for each thread
ALUs: Arithmetic-Logic Units for performing computations
LSUs: Load-Store Units for accessing global data memory
PCs: Program Counters for tracking execution flow of each thread


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
