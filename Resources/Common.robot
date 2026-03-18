*** Settings ***
Documentation                   This file holds startup and teardown keywords that are common across applications
Library                         SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser                about:blank     ${BROWSER}
    Set Window Position         x=0             y=0
    set window size             width=1920      height=1090

End Web Test
    Close Browser

Insert Testing Data
    Log                         I am setting up the test data...

Cleanup Testing Data
    Log                         I am cleaning up the test data...
