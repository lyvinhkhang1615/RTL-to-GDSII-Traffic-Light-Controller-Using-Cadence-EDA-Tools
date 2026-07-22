# RTL-to-GDSII Traffic Light Controller Using Cadence EDA Tools

## Overview

This project demonstrates the complete RTL-to-GDSII ASIC implementation flow of a Traffic Light Controller using Cadence EDA tools on the GPDK045 (45 nm) technology library.

The project covers the entire digital IC design process, including RTL design, logic synthesis, floorplanning, physical design, timing optimization, clock tree synthesis, routing, static timing analysis (STA), and physical verification.

---

## Project Features

- RTL design using Verilog HDL
- Functional simulation
- Logic synthesis with Cadence RTL Compiler
- Design for Testability (DFT) analysis
- Multi-Mode Multi-Corner (MMMC) timing setup
- Floorplanning and power planning
- Standard cell placement
- Clock Tree Synthesis (CTS)
- Routing and optimization
- Static Timing Analysis (STA)
- DRC and connectivity verification
- GDSII generation

---

## Design Flow

```text
RTL (Verilog)
      │
      ▼
Functional Simulation
      │
      ▼
Logic Synthesis
      │
      ▼
MMMC Setup
      │
      ▼
Floorplanning
      │
      ▼
Power Planning
      │
      ▼
Placement
      │
      ▼
Clock Tree Synthesis (CTS)
      │
      ▼
Routing
      │
      ▼
Post-Route Optimization
      │
      ▼
Static Timing Analysis (STA)
      │
      ▼
Physical Verification
      │
      ▼
GDSII
```

---

## Tools

| Tool | Purpose |
|------|---------|
| Cadence RTL Compiler | Logic Synthesis |
| Cadence Encounter 13.10 | Physical Design |
| Cadence Conformal (Optional) | Logic Equivalence Check |
| Verilog HDL | RTL Design |

---

## Technology

- GPDK045 (45 nm)
- Standard Cell Library
- LEF/DEF based Physical Design Flow

---

## Project Structure

```text
RTL/
├── top_module.v
├── clk_1hz.v
├── display_2digit.v
└── fsm.v

Synthesis/
├── syn.tcl
├── constraints/
└── reports/

PnR/
├── scripts/
├── reports/
├── DEF/
├── GDS/
└── CTS/

README.md
```

---

## Physical Design Flow

The Physical Design implementation includes:

- Floorplanning
- Power Ring & Power Stripe Generation
- Pin Placement
- Standard Cell Placement
- Placement Optimization
- Clock Tree Synthesis (CTS)
- Routing
- Post-Route Optimization
- Static Timing Analysis (STA)
- Design Rule Check (DRC)
- Connectivity Verification

---

## Results

- ✔ Functional verification passed
- ✔ Successful RTL-to-GDSII implementation
- ✔ CTS completed successfully
- ✔ Timing closure achieved
- ✔ No DRC violations
- ✔ No Connectivity violations

---

## Skills Demonstrated

- ASIC Physical Design
- RTL-to-GDSII Flow
- Verilog HDL
- Static Timing Analysis (STA)
- Clock Tree Synthesis (CTS)
- Floorplanning
- Power Planning
- Placement & Routing
- Timing Optimization
- Design Rule Check (DRC)
- Cadence RTL Compiler
- Cadence Encounter 13.10

---

## The author team consists of 5 members, including: **Ly Vinh Khang**, **Ly Hoang Khang**, **Nguyễn Phan Thái Sơn**, **Nguyễn Nhật Hào**, **Nguyễn Hữu Bình**

Fourth-year Electronics and Telecommunications Engineering Student
Ho Chi Minh City University of Technology and Engineering (HCMUTE)
Interested in **ASIC Physical Design**, **Digital IC Design**, and **Semiconductor Design**.
---

## License
This project is intended for educational and research purposes.
