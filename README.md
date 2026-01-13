# PCD Automation

A practical workflow to automate CIF extraction from **Pearson’s Crystal Data (PCD)** using **AutoHotkey** and **Python**.

This workflow was designed to facilitate high-throughput CIF collection for machine-learning applications using Pearson’s Crystal Data (PCD).

The AutoHotkey automation targets the first ≤20 entries per composition, consistent with PCD’s batch export limitation. This constraint is well suited to ternary and multicomponent systems, which generally yield a limited number of crystallographic entries, allowing full dataset retrieval without loss.

## 🔧 Features

- **Automates element-based searches in Pearson’s Crystal Data (PCD)**
- **Uses AutoHotkey to control the PCD GUI and export CIF files**
- **Supports batch CIF export (up to PCD’s 20-entry limit)**
- **Splits batch CIFs into individual CIF files**
- **Renames CIFs using their chemical formulas**
- **Optimized for compositions with few entries (e.g., ternary and higher-order systems)**

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

## 📂 Usage

### 1. Install AutoHotkey
- Download AutoHotkey from: https://www.autohotkey.com/
- Install **AutoHotkey v1** (AutoHotkey v2 is not supported)

### 2. Prepare composition list
- Create an Excel file named `formula.xlsx`
- Add all target compositions in a column named **`Formula`**

### 3. Generate elemental search input
- Run `Formula-text.ipynb` to convert formulas into `pcd_batchsearch.txt`
- ⚠️ Multiple formulas may map to the same elemental composition, which can reduce the number of entries in the `.txt` file

### 4. Run PCD automation
- Place `pcd_batchsearch.txt` and `pcd_batchsearch_first_20_entries.ahk` in the same directory
- Open Pearson’s Crystal Data (PCD) and leave it on the **home screen**
- Double-click `pcd_batchsearch_first_20_entries.ahk` to start automation
- **Do not use the mouse or keyboard while the script is running**

### 5. Split and rename CIF files
- After batch CIF files are downloaded, run `CIFsplits.ipynb`
- This script:
  - Splits multi-entry CIF files into individual CIFs
  - Renames CIF files using their extracted chemical formulas
    
## 👨‍💻 Authors

This project was developed by **Amit Kumar**, under the guidance of **Prof. Jakoah Brgoch**.

