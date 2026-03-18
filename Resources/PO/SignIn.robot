*** Settings ***
Documentation                       This file contains keywords for the Amazon UK login page
Library                             SeleniumLibrary

*** Variables ***
${SIGNIN_FIELD}                             name:email

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element        ${SIGNIN_FIELD}
