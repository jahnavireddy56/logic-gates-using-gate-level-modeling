# Verilog Logic Gates (Gate Level Modeling)

This project implements **basic logic gates** (`AND`, `OR`, `NAND`, `NOR`, `NOT`, `XOR`, `XNOR`) using **Gate Level Modeling** in Verilog, along with a testbench to simulate the design.

The simulation generates:
- **Truth table** output in the console.
- **Waveform** view (`.vcd` file) for EPWave or GTKWave.

---

## 📂 Files in this Repository

- **`gate_logic.v`** → Verilog design file containing the `gate_logic` module.
- **`tb1.v`** → Testbench file to simulate the design, print truth table, and generate waveforms.
- **`README.md`** → Project documentation.

---

## 🛠 How to Run the Code

### **Option 1: EDA Playground**
1. Go to [EDA Playground](https://www.edaplayground.com/).
2. Create two files:
   - `gate_logic.v` → Paste the design code.
   - `tb1.v` → Paste the testbench code.
3. Select **Verilog** and a simulator like **Icarus Verilog (iverilog)**.
4. Run the simulation.
5. Check:
   - Console for **truth table** output.
   - EPWave (or GTKWave) for **waveform**.

---

### **Option 2: Local Simulation (Icarus Verilog)**
```bash
# Compile
iverilog -o gates tb1.v gate_logic.v

# Run simulation
vvp gates
