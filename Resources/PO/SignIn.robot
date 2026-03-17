*** Settings ***
Documentation                       This file contains keywords for the Amazon UK login page
Library                             SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element        name:email