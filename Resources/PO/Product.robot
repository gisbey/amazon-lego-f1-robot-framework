*** Settings ***
Documentation                       Flooble
Library                             SeleniumLibrary

*** Keywords ***
Verify Product Loaded
    Page Should Contain             ${SEARCH_TERM}

Add to Cart
    Click Button                    id:add-to-cart-button

Verify Product Added
    Wait Until Page Contains        Added to basket
