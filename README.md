# Structural Inhibition Gate Verilog Simulation

A basic digital logic project implementing a 2-input Inhibition gate (`in1 & ~in2`), simulated using Icarus Verilog (`iverilog`) and verified visually using GTKWave on Ubuntu.

## Inhibition Gate Logic
The Inhibition gate asserts a high output (`1`) if and only if `in1` is active AND `in2` is inactive. If `in2` is active (`1`), it completely blocks (inhibits) the output lane.

| Input 2 (`in2` / `tb_in[1]`) | Input 1 (`in1` / `tb_in[0]`) | Output (`out`) |
| :---: | :---: | :---: |
| 0 | 0 | **0** |
| 0 | 1 | **1** |
| 1 | 0 | **0** |
| 1 | 1 | **0** |

## Files In This Repository
* `simple_inhibition.v` - Primary Verilog source design file implementing the boolean routing function.
* `tb_simple_inhibition.v` - Testbench environment using concurrent clock generation loops to step through a clean binary sweep (`00` → `01` → `10` → `11`).

## How to Run & Verify Locally
Ensure you have `iverilog` and `gtkwave` installed on your Linux system. Run the following commands from this directory:

```bash
# Compile the design module and testbench together
iverilog -o design_simple_inhibition simple_inhibition.v tb_simple_inhibition.v

# Execute the simulation engine to generate waveform logs
vvp design_simple_inhibition

# Open the logic analyzer display window
gtkwave sim_output.vcd
```
