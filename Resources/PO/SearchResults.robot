*** Settings ***
Documentation                       This file contains keywords for the Amazon UK search results page
Library                             SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains        Results

Clink Product Image
    Click Image                     xpath://img[contains(@alt, '${SEARCH_TERM}')]
