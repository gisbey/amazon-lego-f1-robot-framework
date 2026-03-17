*** Settings ***
Documentation                   This file holds startup and teardown keywords that are common across applications
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
