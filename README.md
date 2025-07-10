# Verilog Hardware Modeling

This repository documents my journey into digital hardware design using Verilog HDL. It includes a growing collection of modules, testbenches, and simulation results — starting with basic logic gates and progressing toward more complex combinational and sequential circuits.

## 📂 Project Structure

verilog-hardware-modeling/
basic-gates/
├── gate_name.v         // Verilog module
├── gate_name_tb.v      // Testbench
├── waveforms/          // GTKWave output files
└── README.md
Includes AND, OR, NOT, NAND, NOR, XOR, XNOR gate implementations with testbenches and waveform outputs.


## 🔧 Tools Used

- [Icarus Verilog](http://iverilog.icarus.com/) — for compiling and simulating
- [GTKWave](http://gtkwave.sourceforge.net/) — for viewing waveforms

## ▶️ How to Simulate

**Example (for AND gate):**

Command Prompt:

iverilog -o and_gate_out and_gate.v and_gate_tb.v
vvp and_gate_out
gtkwave dump.vcd     // For generation of Waveform


