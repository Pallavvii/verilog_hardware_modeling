# Basic Logic Gates in Verilog

This folder contains Verilog implementations and testbenches for basic logic gates using **gate-level modeling**.

## 🧠 Description

Each logic gate is implemented using Verilog's built-in primitives such as `and`, `or`, `not`, `nand`, `nor`, `xor`, and `xnor`.
Testbenches are provided for each gate to validate functionality using waveform simulation.

## 📁 Files Included

| Gate      | Verilog File         | Testbench File        | Waveform (.png)          | VCD File (.vcd)     |
|-----------|----------------------|------------------------|---------------------------|---------------------|
| AND Gate  | `and_gate.v`         | `and_gate_tb.v`        | `and_gate_waveform.png`   | `and_gate.vcd`      |
| OR Gate   | `or_gate.v`          | `or_gate_tb.v`         | `or_gate_waveform.png`    | `or_gate.vcd`       |
| NAND Gate | `nand_gate.v`        | `nand_gate_tb.v`       | `nand_gate_waveform.png`  | `nand_gate.vcd`     |
| NOR Gate  | `nor_gate.v`         | `nor_gate_tb.v`        | `nor_gate_waveform.png`   | `nor_gate.vcd`      |
| XOR Gate  | `xor_gate.v`         | `xor_gate_tb.v`        | `xor_gate_waveform.png`   | `xor_gate.vcd`      |
| XNOR Gate | `xnor_gate.v`        | `xnor_gate_tb.v`       | `xnor_gate_waveform.png`  | `xnor_gate.vcd`     |


## 🛠️ How to Run (Icarus Verilog + GTKWave)
1. Open Terminal in the folder containing your .v and _tb.v files.
2. **Compile the Verilog code using Icarus Verilog:**
   iverilog -o gate.out gate.v gate_tb.v (Replace gate with the file name)
3. **Run the simulation:**
   vvp gate.out
4. **View waveform in GTKWave:**
   gtkwave dump.vcd
