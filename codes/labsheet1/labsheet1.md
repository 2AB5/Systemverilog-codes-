# Experiment 3: SystemVerilog Data Types and Looping Statements

## AIM:
To familiarize with the different data types and flow control statements in SystemVerilog.

## Tools Used:
- **ModelSim**

---

## Questions:

### 1. Variable Declarations
- **Declare variables to store the following types and initialize each with any value:**
  - 2-state, 8-bit, 16-bit, 32-bit, and 64-bit signed integers.
  - 2-state, 32-bit unsigned integer.

- **Declare a dynamic array `data_da` of int data type.**

- **Declare queues `data_q` and `addr_q` of int data type.**

- **Declare an associative array `data_mem` of int data type and indexed with `bit[7:0]`.**

---

### 2. Usage of Variables

#### 2.1 Dynamic Array
- Allocate 10 memory locations for the dynamic array `data_da` and initialize all locations with random values less than 25.
  - Display the array.
  - Call the array reduction method `sum()` which returns the sum of all elements of the array and store the return value in the variable `result`.
  - Display the sum of elements (`result`).
  - Sort the array and display the sorted array.

#### 2.2 Queues
- Use methods on `data_q` including:
  - `size`
  - `insert`
  - `delete`
  - `push_front`
  - `pop_front`
  
  Display the content of `data_q` after the execution of each method.

- Generate 10 random addresses using a `repeat` loop and push them into `addr_q`. Display the contents of `addr_q`.

#### 2.3 Associative Array
- Update the associative array `data_mem` with random data based on the addresses stored in `addr_q`. You may use `pop` to get the address.
- Display the contents of the associative array using the `foreach` loop.
- Display:
  - The first index of the array using the associative array method `first`.
  - The first element of the array.
  - The last index of the array using the associative array method `last`.
  - The last element of the array.

---

### 3. User Defined Type
- Create a user-defined type to store the pixel values of an image.
- Create 5 pixels and initialize them with values corresponding to red, violet, and pink. You may use the following [link](https://a.atmos.washington.edu/~ovens/javascript/colorpicker.html) to find out intensity values for different colors.
- Store the pixels in a packed array and display the values using `foreach` loops.

---

### 4. Enumerated Types
- Write code for a state machine using an enumerated type for state names and display the state names.

---

### 5. Strings
- Define and initialize a string.
- Use any 3 string methods and display the results.

---

## Conclusion:
This experiment helped us understand various data types and control flow mechanisms in SystemVerilog, including dynamic arrays, queues, associative arrays, user-defined types, enumerated types, and strings.

