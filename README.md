# 8-bit Ripple Carry Adder – Verilog HDL

## Project Overview

This project presents the design, functional verification, and RTL-to-gate-level synthesis of an **8-bit Ripple Carry Adder (RCA)** using Verilog HDL.

The design is constructed using eight 1-bit Full Adders connected in cascade. The carry output of each Full Adder is connected to the carry input of the next stage.

The project demonstrates a basic digital VLSI design flow from **RTL design to synthesized gate-level representation**.

## Objectives

- Design a 1-bit Full Adder using Verilog HDL.
- Construct an 8-bit Ripple Carry Adder using eight Full Adders.
- Verify the design using a Verilog testbench.
- Analyze simulation waveforms using EPWave.
- Perform RTL synthesis using Yosys.
- Generate a synthesized gate-level Verilog netlist.
- Analyze synthesized logic-cell statistics.

## Architecture

The 8-bit Ripple Carry Adder consists of eight Full Adders connected in cascade.

```text
              ┌─────────────┐
A[0] ────────►│             │
B[0] ────────►│  Full Adder │──────► Sum[0]
Cin ─────────►│     FA0     │
              └──────┬──────┘
                     │
                     ▼
              ┌─────────────┐
A[1] ────────►│             │
B[1] ────────►│  Full Adder │──────► Sum[1]
              │     FA1     │
              └──────┬──────┘
                     │
                     ▼
                    ...
                     │
                     ▼
              ┌─────────────┐
A[7] ────────►│             │──────► Cout
B[7] ────────►│  Full Adder │──────► Sum[7]
              │     FA7     │
              └─────────────┘
```

## Simulation Result

The 8-bit Ripple Carry Adder was functionally verified using **Icarus Verilog and EPWave**.

![EPWave Simulation](simulation-output-epwave.png)

## Synthesis Result

RTL synthesis was performed using **Yosys**.

The synthesized design contains:

- 8 Full Adder blocks
- 24 AND gates
- 16 OR gates
- 16 XOR gates
- 56 logic cells in total

![Yosys Synthesis](synthesis-output-yosys.png)

## Tools Used

- Verilog HDL
- Icarus Verilog
- EPWave
- Yosys
- EDA Playground
- GitHub

## Conclusion

The project successfully demonstrates the complete RTL design flow of an **8-bit Ripple Carry Adder**, including Verilog design, functional simulation, verification, RTL synthesis, and gate-level analysis.

The synthesized results confirm that the design can be implemented using standard logic cells and demonstrates the basic RTL-to-gate-level VLSI design flow.

## Author

**Manoj0506n**
