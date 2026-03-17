*** Settings ***
Documentation           This file contains keywords for the Amazon UK top nav
Library                 SeleniumLibrary

*** Keywords ***
Search For Products
    Input Text          id:twotabsearchtextbox          ${SEARCH_TERM}
    Click Button        id:nav-search-submit-button
