*** Settings ***
Documentation                   This is some basic info about this page.
Library                         SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser                about:blank     ${BROWSER}

End Web Test
    Close Browser

Insert Testing Data
    Log                         I am setting up the test data...

Cleanup Testing Data
    Log                         I am cleaning up the test data...
