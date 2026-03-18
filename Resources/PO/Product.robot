*** Settings ***
Documentation                       This file contains keywords for Amazon UK products
Library                             SeleniumLibrary

*** Variables ***
${ADD_TO_BASKET}                    id:add-to-cart-button

*** Keywords ***
Verify Product Loaded
    Page Should Contain             ${SEARCH_TERM}

Add to Basket
    Click Button                    ${ADD_TO_BASKET}

Verify Product Added
    Wait Until Page Contains        Added to basket
