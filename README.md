# PCD Automation

A practical workflow to automate CIF extraction from **Pearson’s Crystal Data (PCD)** using **AutoHotkey** and **Python**.

This project was developed to support high-throughput materials research where large numbers of CIF files must be collected efficiently for analysis or machine-learning pipelines.

---

## 🔧 Features

- Automates **element-based searches** in Pearson’s Crystal Data
- Uses **AutoHotkey** to control the PCD GUI (selection criteria, answer sets, export)
- Supports **batch CIF export**
- Splits multi-entry CIF files into **individual CIFs**
- Renames CIF files using their **chemical formula**
- Designed for compositions with limited entries per search

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

