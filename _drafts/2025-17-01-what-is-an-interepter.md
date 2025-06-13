---
layout: post
title: Short Intro to ... Programming Language Interpreters
date: 2025-07-01
author: Andy Aspell-Clark
tags:
- programming
- computer
---

This article is going to give a basic understanding of what an programming language interpreter is and it's advantages and disadvantages.

All computers work the same way; a central processing unit (CPU) reads instructions from storage and executes them. The instructions that the CPU reads are just numbers. These numbers are called machine code as each number (code) corresponds to a different operation (well, some operations are made up of multiple numbers in sequence, but the general idea is the same).

so if the CPU only works on numbers, how does the text we type get executed by the CPU?

This is where compilers and interpreters come in. They translate the text we type for a language, be it BASIC, pascal, Fortan, Ada etc... into codes that the CPU understands.

so if we feed this into a python interpreter
```python
# This program adds two numbers

num1 = 1.5
num2 = 6.3

# Add two numbers
sum = num1 + num2

# Display the sum
print('The sum of {0} and {1} is {2}'.format(num1, num2, sum))
```

what the CPU will execute look like this (and no, this isnt the above in machine code):
in hex
```
0x50
0x4A
0x14
0x32
0xF4
0x33
```
or binary
```
0110110110010100
0011010010100101
1010001000110011
1010010011010100
1010101101100010
0010000100101101
```

the machine code (as I hope you can see) is not easy to understand

```assembly
# This program adds two numbers
MOV    CX, 0000    
MOV    AX, [3000]    
MOV    BX, [3002]    
ADD    AX, BX    
JNC    2010    
INC    CX    
MOV    [3004], AX    
MOV    [3006], CX    
HLT
```

