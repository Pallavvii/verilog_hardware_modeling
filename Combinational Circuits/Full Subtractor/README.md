# Full Subtractor 

This repository contains Verilog implementation of a **Full Subtractor** using **Dataflow**, **Behavioral**, and **Structural modeling techniques**. The design is verified using a testbench and GTKWave for waveform analysis.

## Full Subtractor

A Full Subtractor is a combinational logic circuit that performs subtraction of three binary bits: A (minuend), B (subtrahend), and Bin (borrow input).
It produces two outputs:

Difference = A ⊕ B ⊕ Bin

Borrow = (~A ⋅ B) + (~A ⋅ Bin) + (B ⋅ Bin)

It is used in digital circuits to subtract multi-bit binary numbers, where Bin accounts for borrow from the previous stage.

## 📁 Folder Structure

| File Name                          | Description                              |
|------------------------------------|------------------------------------------|
| `full_subtractor_dataflow.v`       | Dataflow model of Full Subtractor        |
| `full_subtractor_behavioral.v`     | Behavioral model of Full Subtractor      |
| `full_subtractor_structural.v`     | Structural model of Full Subtractor      |
| `full_subtractor_tb.v`             | Testbench for simulation                 |
| `full_subtractor.vcd`              | VCD waveform dump file                   |
| `full_subtractor_logic_diagram.png`| Logic diagram of Full Subtractor         |
| `full_subtractor_waveform.png`     | Waveform output from GTKWave             |
| `full_subtractor_command.png`      | Screenshot of terminal compilation steps |
| `README.md`                        | Project documentation                    |


## 🖼️ Logic Diagram

![Logic Diagram](full_subtractor_logic_diagram.png)


## ✅ Truth Table

| A | B | Bin | Difference (A − B − Bin) | Borrow |
|---|---|-----|---------------------------|--------|
| 0 | 0 | 0   | 0                         | 0      |
| 0 | 0 | 1   | 1                         | 1      |
| 0 | 1 | 0   | 1                         | 1      |
| 0 | 1 | 1   | 0                         | 1      |
| 1 | 0 | 0   | 1                         | 0      |
| 1 | 0 | 1   | 0                         | 1      |
| 1 | 1 | 0   | 0                         | 0      |
| 1 | 1 | 1   | 1                         | 1      |


## 🚀 How to Simulate

### ✅ Using Icarus Verilog

iverilog -o full_subtractor full_subtractor_dataflow.v full_subtractor_tb.v
vvp full_subtractor
gtkwave full_subtractor.vcd
