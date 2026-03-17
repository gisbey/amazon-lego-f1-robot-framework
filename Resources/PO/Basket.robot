*** Settings ***
Documentation           This file contains keywords for the Amazon UK basket
Library                 SeleniumLibrary

*** Keywords ***
Proceed To Checkout
    Click Button        name:proceedToRetailCheckout
