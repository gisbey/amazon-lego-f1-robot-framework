*** Settings ***
Documentation                       This is some basic info about this page.
Library                             SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element        name:email