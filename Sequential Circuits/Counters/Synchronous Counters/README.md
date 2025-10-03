## Synchronous Counters (Up & Up/Down)

This repository contains Verilog implementations and testbenches for common sequential counters.

### Included modules:

- 4-bit Synchronous Up Counter
- 4-bit Synchronous Up/Down Counter

 ## 1) 4-bit Synchronous Up Counter

- Counts upward from 0000 → 1111.
- Rolls back to 0000 after reaching 1111.

### Truth/Output Table

| Clock Pulse | Q3 Q2 Q1 Q0 | Decimal |
| ----------- | ----------- | ------- |
| 0 (Reset)   | 0000        | 0       |
| 1           | 0001        | 1       |
| 2           | 0010        | 2       |
| 3           | 0011        | 3       |
| …           | …           | …       |
| 14          | 1110        | 14      |
| 15          | 1111        | 15      |
| 16          | 0000        | 0       |

## 2) 4-bit Synchronous Up/Down Counter

- Controlled by input up_down:

   - up_down = 1 → Counts Up
   - up_down = 0 → Counts Down
 
### Truth/Output Table

(a) Up Count (up_down = 1)

| Clock Pulse | Q3 Q2 Q1 Q0 | Decimal |
| ----------- | ----------- | ------- |
| 0 (Reset)   | 0000        | 0       |
| 1           | 0001        | 1       |
| 2           | 0010        | 2       |
| 3           | 0011        | 3       |
| …           | …           | …       |
| 15          | 1111        | 15      |
| 16          | 0000        | 0       |

(b) Down Count (up_down = 0)

| Clock Pulse | Q3 Q2 Q1 Q0 | Decimal |
| ----------- | ----------- | ------- |
| 0 (Start)   | 1111        | 15      |
| 1           | 1110        | 14      |
| 2           | 1101        | 13      |
| 3           | 1100        | 12      |
| …           | …           | …       |
| 15          | 0000        | 0       |

## Simulation

To simulate using Icarus Verilog (iverilog):

### Compile
iverilog -o sync_counter_out sync_counter.v sync_counter_tb.v

### Run simulation
vvp sync_counter_out

### View waveform (GTKWave)
gtkwave sync_counter_out.vcd
