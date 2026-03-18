*** Settings ***
Documentation                       This file contains keywords for Amazon UK products
Library                             SeleniumLibrary

*** Keywords ***
Verify Product Loaded
    Page Should Contain             ${SEARCH_TERM}

Add to Basket
    Click Button                    id:add-to-cart-button

Verify Product Added
    Wait Until Page Contains        Added to basket
