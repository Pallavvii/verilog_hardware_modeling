# Verilog Hardware Modeling

This repository documents my journey into digital hardware design using Verilog HDL. It includes a growing collection of modules, testbenches, and simulation results — starting with basic logic gates and progressing toward more complex combinational and sequential circuits.

## 📂 Project Structure

verilog-hardware-modeling/
└── basic_gates/
├── and_gate.v # Verilog module for AND gate
├── and_gate_tb.v # Testbench for AND gate
└── waveforms/ # VCD files or waveform screenshots

## 🔧 Tools Used

- [Icarus Verilog](http://iverilog.icarus.com/) — for compiling and simulating
- [GTKWave](http://gtkwave.sourceforge.net/) — for viewing waveforms

## ▶️ How to Simulate

**Example (for AND gate):**

```bash
iverilog -o and_gate_out and_gate.v and_gate_tb.v
vvp and_gate_out
gtkwave dump.vcd


