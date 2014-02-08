ECE281_Lab2
===========

Lab 2: 4-bit Two's Complement Adder/Subtractor

asper Arneberg  
M6A ECE 281  
Dr. Neebel  

# Truth Table: Expected Results

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


# Full Adder Waveform Output

![alt text](https://github.com/JasperArneberg/ECE281_Lab2/blob/master/full_adder_waveform.png?raw=true "Full Adder Waveform Screenshot")

# Truth Table: Simulation Results

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

# Analysis

The truth table of expected results and the truth table derived from the simulation waveform match exactly. This demonstrates that the full adder VHDL code works as it should.

# Documentation
None.
