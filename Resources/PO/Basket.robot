*** Settings ***
Documentation               This file contains keywords for the Amazon UK basket
Library                     SeleniumLibrary

*** Variables ***
${PROCEED_TO_CHECKOUT}      name:proceedToRetailCheckout

*** Keywords ***
Proceed To Checkout
    Click Button            ${PROCEED_TO_CHECKOUT}
