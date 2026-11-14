# 8-Bit Processor Design Using Verilog

## Overview

This project involves the design and simulation of a basic 8-bit processor using Verilog HDL. It was developed as part of a 3-day Microprocessor Design Workshop, where I explored the fundamentals of processor architecture and digital design.

The processor follows a simple fetch-decode-execute approach and uses an accumulator-based architecture to perform basic operations.

## Features

- 8-bit processor architecture
- Accumulator-based design
- 256 × 8-bit RAM
- Program Counter (PC)
- Instruction Register (IR)
- Fetch and Execute states
- Basic instruction decoding
- Simulation using a Verilog testbench
- Waveform analysis using GTKWave

## Instruction Set

The processor supports four basic instructions:

| Opcode | Instruction | Description |
|:---:|---|---|
| `1` | LOAD | Loads data from a specified memory address into the accumulator. |
| `2` | ADD | Adds data from a specified memory address to the accumulator. |
| `3` | OUT | Sends the accumulator value to the output port. |
| `4` | HALT | Stops normal program progression by repeatedly fetching the HALT instruction. |

## Architecture

The processor consists of the following main components:

- **Program Counter (PC):** Holds the address of the next instruction.
- **Instruction Register (IR):** Stores the instruction currently being executed.
- **Accumulator (ACC):** Stores data and intermediate arithmetic results.
- **RAM:** Stores both instructions and data.
- **Control Unit:** Controls the fetch and execute stages.
- **Output Port:** Displays the result of the processor operations.

## Instruction Format

Each instruction is 8 bits wide:

| Bits | Description |
|---|---|
| `[7:4]` | Opcode |
| `[3:0]` | Memory address |

For example:

`18` (Hexadecimal) = `0001 1000` (Binary)

- Opcode: `1` → LOAD
- Address: `8` → Memory location 8

## Program Execution

The sample program stored in `program.mem` performs the following operations:

1. LOAD the initial value from memory address 8.
2. ADD the value stored at memory address 9.
3. Display the accumulator value.
4. Repeat the ADD and OUT operations.
5. Execute the HALT instruction.

Memory initialization:

- Address 8 contains `00` (initial value).
- Address 9 contains `01` (constant value).

**Expected output sequence:**

`01 → 02 → 03`

The processor starts with an accumulator value of 0 and increments it by 1 before each output operation.

## Project Files

| File | Description |
|---|---|
| `design.v` | Main Verilog implementation of the 8-bit processor. |
| `testbench.v` | Testbench used to verify processor functionality. |
| `program.mem` | Memory file containing instructions and data. |
| `dump.vcd` | Simulation waveform file generated during execution. |

## Tools Used

- Verilog HDL
- Icarus Verilog (Simulation)
- GTKWave (Waveform Analysis)
- Visual Studio Code

## Learning Outcomes

Through this project, I gained practical exposure to:

- Understanding the basic architecture of a processor.
- Working with registers, memory and instruction formats.
- Implementing sequential logic using Verilog.
- Understanding the fetch and execute cycle.
- Writing testbenches and verifying digital designs.
- Analysing simulation waveforms using GTKWave.

## Future Improvements

- Expand the instruction set with additional operations.
- Implement a dedicated halt state.
- Support a wider memory-address field.
- Add more arithmetic and logical instructions.
- Improve the processor control architecture.

## Acknowledgement

Developed as part of a 3-day Microprocessor Design Workshop.

This project helped me connect theoretical concepts of processor architecture with practical RTL design and simulation.
