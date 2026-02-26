# Automatic-Parking-Access-Control

This project is a fully automated parking access control system implemented in **Verilog HDL**.
It models a **finite state machine (FSM)** that manages vehicle entry into a parking lot by verifying a password and controlling a gate arm using digital sensors.

Developed for the course **Circuitos Digitales II**.

---

## 📌 Project Overview

The system controls access to a parking lot using:

* Two sensors
* A password verification system
* A gate control mechanism
* Alarm signals for incorrect attempts

The controller is modeled as a **synchronous sequential system**, where:

* Flip-flops store the current state
* Combinational logic determines next state and outputs
* Transitions occur on the rising edge of the clock

---

## 🧠 System Architecture

The module implemented is:

```verilog
module ControladorParqueo (clk, rst, sensor_1, sensor_2, 
psswrd_atmpt, alarm_1, alarm_2, open_gate, close_gate);
```

### Inputs

| Signal              | Description                |
| ------------------- | -------------------------- |
| `clk`               | System clock               |
| `rst`               | Synchronous reset          |
| `sensor_1`          | Detects vehicle arrival    |
| `sensor_2`          | Detects vehicle has passed |
| `psswrd_atmpt[8:0]` | Entered password           |

### Outputs

| Signal       | Description                                     |
| ------------ | ----------------------------------------------- |
| `alarm_1`    | Incorrect password alarm                        |
| `alarm_2`    | Lock alarm (reserved for future implementation) |
| `open_gate`  | Opens the gate arm                              |
| `close_gate` | Closes the gate arm                             |

---

## 🔐 Password Configuration

The system uses a 9-bit password:

```verilog
localparam [8:0] psswrd = 01010111; // Decimal 87
```

If the entered password matches the stored value, access is granted.

---

## 🔄 Finite State Machine (FSM)

The controller is implemented using a 4-state FSM:

| State | Binary | Description              |
| ----- | ------ | ------------------------ |
| S0    | 0000   | Waiting for vehicle      |
| S1    | 0001   | Password entry           |
| S2    | 0010   | Access granted           |
| S3    | 0011   | Blocked state (reserved) |

---

### 🟢 State S0 – Waiting for Vehicle

* Default state after reset.
* If `sensor_1 = 1`, transitions to S1.
* Otherwise remains in S0.

---

### 🟡 State S1 – Password Entry

* Compares `psswrd_atmpt` with stored password.
* If correct:

  * `open_gate = 1`
  * Counter resets
  * Moves to S2
* If incorrect:

  * Attempt counter increments
  * If attempts reach 3 → `alarm_1 = 1`
  * Remains in S1

---

### 🔵 State S2 – Access Granted

* Gate remains open.
* Waits for `sensor_2 = 1` (vehicle passed).
* Then:

  * `open_gate = 0`
  * `close_gate = 1`
  * Returns to S0

---

### 🔴 State S3 – Blocked State

* Reserved for future implementation.
* Intended for permanent lock condition.

---

## 🛠️ Tools Used

This project was developed and tested using:

### 1️⃣ Verilog HDL

Hardware description language used to implement the FSM.

### 2️⃣ Icarus Verilog

Used for compilation and simulation.

Compile:

```bash
iverilog -o parking.vvp ControladorParqueo.v testbench.v
```

Run simulation:

```bash
vvp parking.vvp
```

---

### 3️⃣ GTKWave

Used to visualize simulation waveforms.

Open waveform:

```bash
gtkwave dump.vcd
```

GTKWave allows visualization of:

* State transitions
* Password comparisons
* Alarm activations
* Gate control signals

---

### 4️⃣ Synthesis and Technology Mapping

The design was synthesized and mapped to standard cells using a synthesis tool (e.g., **Yosys**).

Typical flow:

```bash
yosys
```

Inside Yosys:

```bash
read_verilog ControladorParqueo.v
synth
abc
write_verilog synthesized.v
```

During synthesis:

* Flip-flops were inferred from sequential logic.
* Combinational logic was optimized.
* The design was mapped to a specific cell library.

This step ensures the design is hardware-realizable.

---

## ⚙️ Design Characteristics

* Fully synchronous design
* Uses non-blocking assignments for sequential logic
* Clean separation between:

  * Flip-flop block
  * Combinational logic block
* Deterministic behavior
* Password attempt counter implemented

---

## 🚀 How to Run the Project

1. Install:

   * Icarus Verilog
   * GTKWave
   * Yosys (for synthesis)

2. Compile the design with a testbench.

3. Run simulation.

4. Open waveform viewer.

5. (Optional) Run synthesis to verify hardware implementation.

---

## 📚 Educational Value

This project demonstrates:

* Finite State Machine implementation
* Sequential vs combinational logic
* Hardware modeling using Verilog
* Simulation and waveform debugging
* Basic synthesis and cell mapping flow

It is a complete digital systems design example suitable for:

* FPGA implementation
* ASIC flow introduction
* Digital logic coursework

---

## 👨‍🎓 Author

Josué María Jiménez Ramírez
Circuitos Digitales II
Profesor Enrique Coen Alfaro
Periodo I – 2024

---

If extended, future improvements may include:

* Full implementation of block state (S3)
* Timer-based lockout
* Display interface
* FPGA deployment
* Security logging system
