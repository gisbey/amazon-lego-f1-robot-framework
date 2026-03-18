*** Settings ***
Documentation                   This file holds startup and teardown keywords that are common across applications
Library                         SeleniumLibrary

*** Variables ***
${BLANK_BROWSER}                about:blank
@{WINDOW_POSITION}              0                           0
@{WINDOW_SIZE}                  1920                        1090

*** Keywords ***
Begin Web Test
    Open Browser                ${BLANK_BROWSER}            ${BROWSER_TYPE}
    Set Window Position         ${WINDOW_POSITION}[0]       ${WINDOW_POSITION}[1]
    Set Window Size             ${WINDOW_SIZE}[0]           ${WINDOW_SIZE}[1]

End Web Test
    Close Browser

Insert Testing Data
    Log                         I am setting up the test data...

Cleanup Testing Data
    Log                         I am cleaning up the test data...
