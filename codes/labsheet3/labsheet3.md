# Experiment 5: OOPs in SystemVerilog

## AIM:
To understand and familiarize with Object-Oriented Programming (OOPs) concepts in SystemVerilog.

## Tools Used:
- **ModelSim**

---

## Questions:

### 1. Familiarization with OOPs Basics

#### a. **Declare Class `packet`**
- **Task:** Create a class named `packet`.

#### b. **Properties of the `packet` Class:**
- Declare the following properties within the `packet` class:
  - `data`: 4-bit property
  - `address`: 2-bit property
  - `memory`: 4x4 bit array property

#### c. **Methods of the `packet` Class:**
- Create the following methods inside the `packet` class:
  1. **Constructor Function:** Initialize the memory locations with values corresponding to the address. For example, `mem[0] = 0`, `mem[1] = 1`, etc.
  2. **`WriteMem` Function:** Write the `data` into the memory address provided.
  3. **`ReadMem` Function:** Read the `data` from the given memory address and print the values.
  4. **`Display` Function:** Display the current values of `data` and `address`.

#### d. **Declare Two Handles for the `packet` Class:**
- Declare `pkt_h1` and `pkt_h2` as handles for the `packet` class.

#### e. **Accessing Members of Objects:**
- Perform the following operations:
  1. Create an object `pkt_h1`.
  2. Print the statement **“Before writing to memory”**.
  3. Read and print all memory contents.
  4. Assign random values to `data` and `address`, and write the `data` into memory.
  5. Print the statement **“After writing to memory”**.
  6. Read and print all memory contents again.

#### f. **Duplicating Objects:**
- Perform the following tasks:
  1. Display the value of `data` and `address` of `pkt_h1`.
  2. Assign `pkt_h1` to `pkt_h2`.
  3. Display the values of `data` and `address` for both `pkt_h1` and `pkt_h2`.
  4. Modify the values of `data` and `address` using handle `pkt_h2`.
  5. Display the values of `data` and `address` for both `pkt_h1` and `pkt_h2`.
  6. **Observation:** What happens when two handles reference the same object?

---

### 2. Understanding Shallow Copy and Deep Copy

#### a. **Task:**
- Write a program to illustrate the concepts of **shallow copy** and **deep copy**.
- Add comments to explain each line of the code.

---

### 3. Understanding the Concept of Inheritance

#### a. **Class Inheritance:**
- Define a class `A` with an integer property `i` and a method to display the value of `i`.
- Define a subclass `B` that extends class `A` and adds an integer property `j` along with a method to display the value of `j`.
- Create an object of class `B` and demonstrate that both `i` and `j` can be assigned values through the object `B`.

---

### 4. Accessing Base Class Data from Subclass (Using the `super` Keyword)

#### a. **Task:**
- Define a parent class and a subclass, each containing at least one property and one method, with the same names in both.
- Illustrate how the subclass methods can access the parent class members with the same name using the `super` keyword.

---

### 5. Polymorphism

#### a. **Task:**
- Write a SystemVerilog program to demonstrate how virtual methods in the base class can be overridden by methods in the child class (polymorphism).

---

## Conclusion:
This experiment explores the key principles of Object-Oriented Programming (OOP) in SystemVerilog, including class definition, inheritance, method overriding, and polymorphism. These concepts are essential in making SystemVerilog a powerful language for designing reusable and modular verification environments.
