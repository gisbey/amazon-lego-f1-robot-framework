*** Settings ***
Documentation                               This is some basic info about this page.
Library                                     SeleniumLibrary

*** Keywords ***
Load
    Go to                                   ${START_URL}

Verify Page Loaded
    Wait Until Page Contains Element        id:nav-logo-sprites

Accept Cookies
    Wait Until Page Contains                Select your cookie preferences
    Click Button                            id:sp-cc-accept
