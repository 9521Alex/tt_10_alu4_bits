<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This circuit consists of a four-bit ALU with two operands, a three-bit operation selector with options for addition, subtraction, AND, OR, and XOR, as well as a carry/borrow indicator bit for !
addition/subtraction and a flag bit that indicates a zero result.

![alu_4bits](https://github.com/user-attachments/assets/97164799-44c3-4143-bcfd-0f1494734e6b)


## How to test

The circuit is fully combinational, where A[3:0] holds the first operand and B[7:0] holds the second operand, respectively. The [2:0] operation selector input provides five operation options: 000 → Addition, 001 → Subtraction, 010 → AND function, 011 → OR function, and 100 → XOR function. Additionally, the circuit includes a carry/borrow indicator bit for addition/subtraction, as well as a flag bit that indicates a zero result.
![alu_pad](https://github.com/user-attachments/assets/829037bf-e8cc-472b-9b8a-252f417519f6)

![RTL_alu](https://github.com/user-attachments/assets/c815d115-31ca-4a6a-baf9-cb3f4b3c5aa8)

![tb_alu](https://github.com/user-attachments/assets/513f63bd-ed72-402a-b1cf-79c3c2421e3a)

## External hardware

No laboratory equipment is required; only a DIP switch with a pull-down configuration is needed for the 11 inputs. For the outputs, 6 LEDs are used, each with its respective 330-ohm resistor.
