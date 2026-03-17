# Amazon LEGO Formula 1 - Robot Framework Automation Suite
A small, simple automation suite for users to interact with LEGO F1 cars on Amazon UK. This repository contains automated tests, custom libraries, and supporting utilities designed to enable reliable,
readable, and reusable test automation.

---

## Table of Contents

1. [Overview](#overview)
2. [Project Structure](#project-structure)
3. [Getting Started](#getting-started)
4. [Installation](#installation)
5. [Running Tests](#running-tests)
6. [Configuration](#configuration)
7. [Test Data](#test-data)
8. [Logging & Reports](#logging--reports)
9. [Conventions & Best Practices](#conventions--best-practices)
10. [Extending the Framework](#extending-the-framework)
11. [Extending the Framework](#troubleshooting)

---

## Overview
This project uses Robot Framework, an automation framework with a focus on readability, keyword‑driven automation, and extensibility.
It supports:
- Functional UI testing
- API testing
- Data‑driven testing
- Custom Python libraries
- Parallel execution
- CI/CD pipeline integration

---

## Project Structure
project/
│
├── Resources/                           # Files containing reusable keywords
│   ├── PO/                              # PO subfolder contains page-specific keywords
│   ├────── Basket.robot/
│   ├────── LandingPage.robot/
│   ├────── Product.robot/
│   ├────── SearchResults.robot/
│   ├────── SignIn.robot/
│   ├────── TopNav.robot/
│
│   ├── AmazonAPP.robot/                 # Amazon-specific keywords
│   ├── Common.robot/                    # Keywords that are common across applications
│
├── Results/                             # Generated logs, reports, screenshots
│   ├── batch/                           # Batch files that can be run against command line
│   ├────── win11chrome-ferrari/
│   ├────── win11edge-mercedes/
│   ├────── win11firefox-mclaren/
│
├── Tests/               
│   ├── Amazon.robot                     # Main test file with variables for browser and Amazon search term.

---

## Getting Started
Prerequisites:
- Python
- PIP
- Robot Framework
- Selenium
- Chrome, Firefox & Edge
- Chrome, Firefox & Edge Webdrivers
- PyCharm IDE (or an IDE of your choice)

Recommended PyCharm Plug-ins:
- IntelliBot

---

## Installation
1. Clone the repository
Shellgit clone https://github.com/your-org/your-repo.gitcd your-repoShow more lines
2. Install dependencies
Using pip:
Shellpip install -r requirements.txtShow more lines
Or using Poetry:
Shellpoetry installShow more lines

▶️ Running Tests
Run all tests
Shellrobot testsShow more lines
Run a specific suite
Shellrobot tests/ui/login.robotShow more lines
Run with variable file
Shellrobot --variablefile configs/qa.yaml testsShow more lines
Run in parallel (with Pabot)
Shellpabot --processes 4 testsShow more lines

⚙️ Configuration
Environment settings are stored in configs/*.yaml.
Example:
Shellbase_url: "https://qa.example.com"api_key: "12345"browser: "chrome"timeout: 10Show more lines
Use variables in tests:
Robot Framework${BASE_URL}${API_KEY}Show more lines

📊 Test Data
Store data in data/ as:

JSON
CSV
YAML

Example usage:
Robot Framework*** Variables ***${USER_DATA}    data/users.jsonShow more lines

📝 Logging & Reports
Robot Framework automatically generates:

log.html
report.html
output.xml

These files are stored in the output/ directory after each run.
Screenshots on failure are also saved automatically (if enabled in browser library).

🧭 Conventions & Best Practices
✓ Test Suite Structure

One suite per feature or domain
Small, readable test cases
Reuse keywords instead of repeating logic

✓ Naming Conventions

Test cases use human-readable, behavior-driven naming
Keywords use verb‑first naming
Avoid long test files

✓ Keywords
Prefer higher-level business keywords over low-level technical steps.
❌ Bad:
Click Element    id=login-button

✅ Good:
Submit Login Form

✓ Variables
Centralize configuration & test data
Use variable files rather than inline hardcoding
✓ Custom Libraries
Use Python libraries when:

Logic is too complex for Robot syntax
You need performance
You want reusable utility logic


🔧 Extending the Framework
You can add:

Custom Python libraries under libraries/
New keyword resource files under resources/keywords/
New locators under resources/locators/

To expose a Python library to Robot:
Pythonclass MyLibrary:    def hello_world(self):        print("Hello World")Show more lines
Use in Robot:
Robot FrameworkLibrary    libraries/MyLibrary.pyShow more lines

🛠 Troubleshooting

























IssueFixBrowser won't openEnsure correct driver or use Browser/PlaywrightVariables not foundVerify variable file path & syntaxReports emptyEnsure correct test directory structurePython library import failsCheck __init__.py placement

🤝 Contributing

Create a feature branch
Add or update tests
Follow code-style guidelines
Submit a pull request

Please ensure you include:

Updated documentation
Passing test results


📄 License
This project is licensed under the MIT License (or whatever your team uses).
