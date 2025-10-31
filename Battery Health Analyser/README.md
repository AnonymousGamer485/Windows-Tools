# 🔋 Battery Health Analyzer

A simple, open-source web tool designed to calculate your device's battery health percentage and provide valuable tips for extending its lifespan. It works by analyzing key capacity values, either manually entered or automatically extracted from a standard Windows **`battery-report.html`** file.

## ✨ Features

* **Battery Health Calculation:** Determine your battery's current capacity as a percentage of its original design capacity.
* **Windows Report Parsing:** Seamlessly upload and parse the `battery-report.html` file (generated via `battery_report.bat`) to automatically extract key data like Design Capacity, Full Charge Capacity, Cycle Count, Manufacturer, and Chemistry.
* **Estimated End-of-Life (EOL):** Predict the approximate date when your battery health will drop to the recommended replacement threshold of 80% (based on calendar age and current degradation rate).
* **Personalized Tips:** Get actionable advice tailored to your battery's current health status and cycle count.
* **Visual Feedback:** A dynamic battery icon and color-coded status (Green, Yellow, Red) for quick interpretation of health.

## 🛠️ Technology Stack

This project is built purely on client-side technologies, meaning all calculations are performed directly in the user's browser, ensuring **speed and privacy**.

* **HTML5:** Structure
* **Tailwind CSS:** Modern, utility-first styling for a clean and responsive design.
* **JavaScript (ES6+):** Core logic for calculation, DOM manipulation, file parsing, and dynamic updates.

## 💻 How to Use

This tool accepts capacity values manually or via a Windows report file.

### A. Windows Report Generation & Upload (Recommended)

To get the most data (including Cycle Count, Manufacturer, etc.), we recommend generating a report using the automated script found in the **[Tools](#-tools)** section below.

1.  **Generate the Report:** Run the `Battery_report.bat` script.
2.  The script will generate and save the `battery-report.html` file on your PC.
3.  **Upload the Report:** In the web tool, click the **"Upload your battery-report.html file"** button and select the generated file.
4.  The tool will automatically extract the capacities, cycle count, and other metadata, then calculate and display your health.

### B. Manual Entry (Alternative)

1.  Enter the **Design Capacity** (in mWh) of your battery.
2.  Enter the **Full Charge Capacity** (in mWh) from your latest battery report.
3.  Enter the **Age of Battery** in months (since purchase or service) **(optional)**.
4.  The Battery Health percentage, status, and personalized tips will update instantly.

## ⚙️ Tools

This section contains utility files to help users and contributors interact with the project.

### Windows Battery Report Generator (`Battery_report.bat`)

This batch script automates the generation and opening of the standard Windows battery report.
