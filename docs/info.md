<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This circuit consists of a four-bit ALU with two operands, a three-bit operation selector with options for addition, subtraction, AND, OR, XOR, multiplication and division, as well as a carry/borrow indicator bit for addition/subtraction and a flag bit that indicates a zero result.

![alu_4bits](https://github.com/user-attachments/assets/97164799-44c3-4143-bcfd-0f1494734e6b)


## How to test

The circuit is fully combinational, where A[3:0] holds the first operand and B[7:0] holds the second operand, respectively. The [2:0] operation selector input provides five operation options: 000 → Addition, 001 → Subtraction, 010 → AND function, 011 → OR function, and 100 → XOR function. Additionally, the circuit includes a carry/borrow indicator bit for addition/subtraction, as well as a flag bit that indicates a zero result.
![alu_pad](https://github.com/user-attachments/assets/b8c137e6-9042-4967-b5ad-fe56920ee1fd)

![RTL_alu4bits](https://github.com/user-attachments/assets/748a6c0d-7291-42cc-8111-8c093da953b5)

![tb_alu4bits v](https://github.com/user-attachments/assets/e01b876d-f29f-456b-8640-4c5eaa92c6da)

## External hardware

No laboratory equipment is required; only a DIP switch with a pull-down configuration is needed for the 11 inputs. For the outputs, 6 LEDs are used, each with its respective 330-ohm resistor.
