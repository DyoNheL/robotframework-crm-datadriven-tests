# Robot Framework – CRM Data-Driven Tests

[![Python](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](https://www.python.org/)
[![Robot Framework](https://img.shields.io/badge/Robot%20Framework-6.x-orange.svg)](https://robotframework.org/)
[![SeleniumLibrary](https://img.shields.io/badge/SeleniumLibrary-latest-green.svg)](#)
[![DataDriver](https://img.shields.io/badge/DataDriver-Enabled-lightgrey.svg)](#)

This project contains **automated UI tests** for the [Automation Playground CRM](https://automationplayground.com/crm/login.html) website. 

It demonstrates **data-driven testing** using Robot Framework with a **Page Object Model (POM)** approach.  

---

## Features

- **Page Object Model (POM)** structure for better maintainability  
- **Data-driven testing** with Excel files  
- **Positive and negative test cases** for Add Customer form  
- **HTML5 form validation checks** (`required` fields)  
- Easily extendable for new test cases and scenarios  

---

## Setup Instructions

### 1. Install Python

Download and install **Python 3.8+** from [python.org](https://www.python.org/downloads/).  
Make sure to check **“Add Python to PATH”** during installation.  

Verify installation:

```bash
python --version
````

---

### 2. Install Google Chrome

Download and install the latest version of [Google Chrome](https://www.google.com/chrome/).

---

### 3. Install Dependencies

From the project root folder, install required libraries:

```bash
pip install -r requirements.txt
```

This includes:

* **Robot Framework**
* **SeleniumLibrary**
* **DataDriver**

---

## Running the Tests

Run the full suite:

```bash
robot -d docs/reports tests/
```

Run only the Positive Add Customer tests:

```bash
robot -d docs/reports tests/add_customer_positive_test.robot
```

Run only the Negative Add Customer tests:

```bash
robot -d docs/reports tests/add_customer_negative_test.robot
```

---

## Test Reports

Reports are generated in the `docs/reports/` folder:

* **log.html** → Detailed step-by-step execution log
* **report.html** → Test summary report
* **output.xml** → Machine-readable output

---

## Example Test Scenarios

* Add customer with valid data → Success message displayed
* Add customer with missing required field → HTML5 validation prevents submission

---

## Skills Demonstrated

* Robot Framework test automation
* Data-driven testing with **DataDriver + Excel**
* Page Object Model (POM) design for maintainability
* SeleniumLibrary for web UI testing
* HTML5 form validation checks

---

## Credits

* Test site: [Automation Playground CRM](https://automationplayground.com/crm/login.html)
* Built with ❤️ using **Robot Framework + SeleniumLibrary + DataDriver**