*** Settings ***
Documentation                       This file contains keywords for the Amazon UK search results page
Library                             SeleniumLibrary

*** Variables ***
${PRODUCT_IMAGE}                    xpath://img[contains(@alt, '${SEARCH_TERM}')]

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains        Results

Clink Product Image
    Click Image                     ${PRODUCT_IMAGE}
