# 🧩 32-bit Sudoku Solver/Game in Assembly (x86)

A **fully working Sudoku game/solver** developed using **32-bit x86 Assembly Language**. This project demonstrates how a high-level logic puzzle like Sudoku can be solved and interacted with using **low-level CPU instructions**, registers, loops, and memory addressing.

---

## 🛠 Technology Stack

- 🖥 **Assembly Language (x86)**
- ⚙️ **32-bit Real Mode**
- 🧱 NASM / MASM / TASM (configurable depending on your system)
- 💾 BIOS/DOS interrupts (for input/output)
- 🧠 Manual stack, loops, and memory-based grid processing

---
![board up](boardup.png)

---
![board down](boarddown.png)

---

## 🎮 Game Overview

The Sudoku game is represented using a 9x9 grid stored in memory. The program supports:

- ✔️ Input of Sudoku values manually or through a preset
- 🧠 Solving using backtracking algorithm (implemented using low-level loop/recursion simulation)
- 🔁 Validating rows, columns, and 3x3 blocks using nested loops
- 🧮 Displaying the board on the console using formatted output

---

## 🔑 Features

- 📥 Manual or predefined puzzle input
- 🧠 Recursive-style backtracking solver (without actual recursion)
- ⛔ Conflict detection (row, column, block)
- 📤 Output in clean grid format
- ⌨️ Keyboard-controlled navigation/input
- 💾 Efficient use of stack, loops, and registers
- 🚫 No external libraries required – runs purely in assembly!

---

## 🧠 Concepts Demonstrated

- Register-level data manipulation (AX, BX, CX, DX, etc.)
- Stack operations (`PUSH`, `POP`, `CALL`, `RET`)
- Loop structures and nested conditionals
- Memory addressing for grid traversal
- Interrupt-based I/O (`INT 21h`, etc.)
- Delay, clear screen, and number formatting logic

