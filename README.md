# Getting-Starter-with-FPGA-s

Beginner Verilog projects from Russell Merrick’s Getting Started with FPGAs, ported to the Sipeed Tang Nano 9K (Gowin GW1NR-9): switch-to-LED wiring, logic gates with testbenches, clocked edge detection and a parameterised debounce filter.

Hardware: Sipeed Tang Nano 9K (Gowin GW1NR-9).

| Project | What it does | Files |
|---|---|---|
| Project 1 | Switches wired straight to LEDs | `lights.v`, `Constraint_File.cst` |
| Project 2 | AND gate (two switches → one LED), with testbench and Gowin IDE project | `esfa.v`, `Testbench.v`, `constrainsts.cst`, `fpga_project/` |
| Project 3 | Toggle an LED on each button release (edge detection) | `Blinking.v`, `FileConstraints.cst`, `clock.sdc` |
| Project 4 | Debounce filter feeding the LED toggle | `Debounce_Filter.v`, `Debounce_Filter_tb.v`, `Debouncer_Project_Top.v` |

`Tang nano 9k/` holds the board pinmap and schematics for reference.
