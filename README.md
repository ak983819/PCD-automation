# PCD Automation

A practical workflow to automate CIF extraction from **Pearson’s Crystal Data (PCD)** using **AutoHotkey** and **Python**.

This workflow was designed to facilitate high-throughput CIF collection for machine-learning applications using Pearson’s Crystal Data (PCD).

The AutoHotkey automation targets the first ≤20 entries per composition, consistent with PCD’s batch export limitation. This constraint is well suited to ternary and multicomponent systems, which generally yield a limited number of crystallographic entries, allowing full dataset retrieval without loss.

## 🔧 Features

-Automates element-based searches in Pearson’s Crystal Data (PCD)
-Uses AutoHotkey to control the PCD GUI and export CIF files
-Supports batch CIF export (up to PCD’s 20-entry limit)
-Splits batch CIFs into individual CIF files
-Renames CIFs using their chemical formulas
-Optimized for compositions with few entries (e.g., ternary and higher-order systems)

---

## 🧩 Requirements

- **Pearson’s Crystal Data (PCD)**  
  *(Licensed software — not included in this repository)*
- **Windows OS**
- **AutoHotkey v1**
- **Python ≥ 3.8**

Python packages used:
- `re`
- `pathlib`

(no external dependencies)

---

## 📂 Repository Structure

