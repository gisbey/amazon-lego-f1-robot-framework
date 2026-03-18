*** Settings ***
Documentation                               This file contains keywords for the Amazon UK landing page
Library                                     SeleniumLibrary

*** Variables ***
${AMAZON_LOGO}                              id:nav-logo-sprites
${ACCEPT_COOKIES}                           id:sp-cc-accept

*** Keywords ***
Load
    Go to                                   ${START_URL}

Verify Page Loaded
    Wait Until Page Contains Element        ${AMAZON_LOGO}

Accept Cookies
    Wait Until Page Contains                Select your cookie preferences
    Click Button                            ${ACCEPT_COOKIES}
