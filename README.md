ECE281_Lab2
===========

Lab 2: 4-bit Two's Complement Adder/Subtractor

C3C Jasper Arneberg  
M6A ECE 281  
Dr. Neebel  

## Prelab
### Truth Table: Expected Results

| A | B | Cin | Sum | Cout | 
| :--: | :--: | :--: | :--: | :--: |
| 0 | 0 | 0 | 0 | 0 | 
| 1 | 0 | 0 | 1 | 0 | 
| 0 | 1 | 0 | 1 | 0 | 
| 1 | 1 | 0 | 0 | 1 | 
| 0 | 0 | 1 | 1 | 0 | 
| 1 | 0 | 1 | 0 | 1 | 
| 0 | 1 | 1 | 0 | 1 | 
| 1 | 1 | 1 | 1 | 1 | 

### Sum-Of-Products Equations
Sum = AB'C' + A'BC' + A'B'C + ABC
Cout = AC + BC + AB

### Schematic
The schematic for the full adder was drawn in dot notation for a programmable logic array with an OR array and an AND array.
![alt text](https://github.com/JasperArneberg/ECE281_Lab2/blob/master/schematic.png?raw=true "Full Adder Schematic")

### Full Adder Waveform Output
![alt text](https://github.com/JasperArneberg/ECE281_Lab2/blob/master/full_adder_waveform.png?raw=true "Full Adder Waveform Screenshot")

### Truth Table: Simulation Results

| A | B | Cin | Sum | Cout | 
| :--: | :--: | :--: | :--: | :--: |
| 0 | 0 | 0 | 0 | 0 | 
| 1 | 0 | 0 | 1 | 0 | 
| 0 | 1 | 0 | 1 | 0 | 
| 1 | 1 | 0 | 0 | 1 | 
| 0 | 0 | 1 | 1 | 0 | 
| 1 | 0 | 1 | 0 | 1 | 
| 0 | 1 | 1 | 0 | 1 | 
| 1 | 1 | 1 | 1 | 1 | 

### Prelab Analysis

The truth table of expected results and the truth table derived from the simulation waveform match exactly. This demonstrates that the full adder VHDL code works as it should.

## Main Lab

### Final Circuit Schematic
Here is the final circuit schematic. The design uses four full adder components, labeled 3 through 0 as can be seen. The final design also implements the logic from four different multiplexers. These multiplexers switch the input to the adder between B and B' based on whether or not the subtraction button is enabled.

![alt text](https://github.com/JasperArneberg/ECE281_Lab2/blob/master/final_schematic.jpg?raw=true "Final Circuit Schematic")

### Four-Bit Adder Testbench Output
The four-bit adder/subtractor waveform can be seen below. There are 512 potential combinations, each one corresponding to 1ns.

![alt text](https://github.com/JasperArneberg/ECE281_Lab2/blob/master/four_bit_waveform.png?raw=true "Final Circuit Schematic")

### Design Process

### Demonstrations


### Documentation
None.
