# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Araceli Gomez Chavez & Gabriel Kendall

## Summary
This lab focused on using binary subtraction and number representation methods by using different combinational logic circuits. A half subtracted was used from Boolean equations that were derived from the truth tables to produce a difference and borrow outputs. These outputs both came from two input bits. Also, a one's complement adder was designed using multiple full adders to add two four bit numbers with a carry at the very end. The two's complement converter was built by inverting 8-bits and using a full adder. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
A Half Adder and a Half Subtracter both operate on two-bit inputs, however they perform different operations. For example, a Half-Adder adds the two binary inputs and produces a sum and carry output. On the other hand, a Half Subtractor subtracts one binary input from the other that results in a difference and borrow output. 

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The part about the end around carry of the One's Complement that makes it hard to use and implement is because any carry that is generated from the most significant bit is then added back to the least significant bit. In verilog, directly adding the carry back to the beginning results in a combinational loop which results in unstable behavior. 

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case with the Two's Complement number representation happens with the most negative number that can be showcased. The problem with this is that taking the two's complement of that most negative number ends in the same same value which causes overflow and problems with arithmetic. 
