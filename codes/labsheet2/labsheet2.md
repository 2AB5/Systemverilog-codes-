# Experiment 4: SystemVerilog Interfaces

## AIM:
To understand and familiarize with the usage of SystemVerilog interfaces.

## Tools Used:
- **ModelSim**

## Devices Under Test (DUT):
1. **Arbiter Block:**
   - Has 2-bit grant and request signals, along with clock and reset signals.
   - On reset, the grant is set to "00", disabling all blocks.
   - Whenever a request signal is received, the corresponding block is granted access to the bus at the rising edge of the clock.

2. **RAM:**
   - Has 4-bit read and write address lines, and an 8-bit data bus.
   - Read and write operations are enabled at the rising edge of the clock when `rd_en` and `wr_en` are activated.

---

## Questions:

### 1. Arbiter Verification Platform with a Basic Interface

#### a. **Interface Design (`arb_if.sv`)**
- **Task:** Declare the interface signals: 2-bit grant, 2-bit request signals, and a 1-bit reset signal. The clock is provided as input to the interface.

#### b. **Arbiter Block Design (`arb.sv`)**
- **Task:** Design an arbiter block that calls `arb_if` and performs the functionality specified in the DUT section.

#### c. **Arbiter Testbench Design (`arb_tb.sv`)**
- **Task:** 
  - Design a testbench that calls `arb_if`.
  - Generate a request signal at the rising edge of the clock and display the time of the request generation.
  - Wait for the grant signal and display the time and the granted block number when the grant signal is received.

#### d. **Arbiter Monitor Design (`arb_monitor.sv`)**
- **Task:** 
  - Write a monitor block that calls `arb_if` to capture the bus request time.
  - Wait for the grant signal and display the times of each request and grant signal.

#### e. **Top Module Design (`arb_top.sv`)**
- **Task:** 
  - Instantiate the interface, DUT, testbench, and monitor.
  - Generate the clock signal.

---

### 2. Arbiter Verification Platform with Modport Included in the Interface

- **Task:** Repeat the design of the arbiter verification platform, but include **modports** inside the interface to declare the direction of the signals (no need to use clocking blocks).

---

### 3. Arbiter Verification Platform with Modports and Clocking Blocks

- **Task:** 
  - Repeat the arbiter verification platform using **modports** and **clocking blocks** inside the interface.
  - Define the input skew as `#1` and the output skew as `#2`.

---

## Conclusion:
This experiment helped us explore the design and verification of SystemVerilog interfaces. The use of interfaces with modports and clocking blocks provides more control over signal directions and timing, which is critical in building reliable digital systems.
