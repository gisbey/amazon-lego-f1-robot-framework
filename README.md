# Amazon LEGO F1 - Robot Framework Automation Suite
A simple automation suite for users to interact with LEGO Formula 1 cars on Amazon UK. This repository contains automated tests, custom libraries, and supporting utilities designed to enable reliable,
readable, and reusable test automation.

---

## Table of Contents

1. [Overview](#overview)
2. [Project Structure](#project-structure)
3. [Getting Started](#getting-started)
4. [Configuration](#configuration)
5. [Running Tests](#running-tests)
6. [Test Results](#test-results)

---

## Overview
This project uses **Robot Framework**, an automation framework with a focus on readability, keyword‑driven automation, and extensibility.

This suite allows an unauthenticated user to:
- Navigate to Amazon UK
- Search for a LEGO F1 car of their choice
- Select it
- Add it to their basket
- Head to checkout
Crucially, they cannot actually order the car without logging into an Amazon account.

---

## Project Structure

- **Project**
  - **Resources** - contains project keywords
    - **PO** - page‑specific keywords
      - Basket.robot
      - LandingPage.robot
      - Product.robot
      - SearchResults.robot
      - SignIn.robot
      - TopNav.robot
    - AmazonAPP.robot - Amazon‑specific keywords
    - Common.robot - keywords common across applications
  - **Results** - generated logs, outputs, reports, screenshots
    - batch/
      - win11chrome-ferrari/
      - win11edge-mercedes/
      - win11firefox-mclaren/
  - **Tests**
    - Amazon.robot - Main test file with variables for browser and search term


---

## Getting Started
Prerequisites:
- Python
- PIP
- Robot Framework
- Selenium Library
- Chrome, Firefox & Edge browsers
- Chrome, Firefox & Edge Webdrivers
- PyCharm IDE (or an IDE of your choice)

Recommended PyCharm Plug-ins:
- IntelliBot

---

## Configuration
There are 3 variables that can be set:
- ${BROWSER} = Your choice of browser
- ${START_URL} = This **must** be set to https://www.amazon.co.uk/
- ${SEARCH_TERM} = This is the LEGO F1 car of your choice. E.g. LEGO Speed Champions Oracle Red Bull Racing RB20

---

## Running Tests
Run all tests in PyCharm and have logs appear in the 'Results' directory:
- robot -d results Tests/amazon.robot

Alternatively, you can also run the tests using Powershell by running the following commands in your project directory:
- robot -d results  -v BROWSER:{{browser_of_your_choice -v SEARCH_TERM:"LEGO_car_of_your_choice" Tests/amazon.robot
- E.g. robot -d results/batch/win11chrome -v BROWSER:chrome -v SEARCH_TERM:"LEGO Speed Champions Ferrari SF-24" Tests/amazon.robot

---

## Test Results
**Robot Framework** automatically generates:
- log.html
- report.html
- output.xml

These are stored in the **Result** directory.

There are also three batch files stored in 'Results > batch', each with their own logs. These can be run agains the command line using File Explorer.
