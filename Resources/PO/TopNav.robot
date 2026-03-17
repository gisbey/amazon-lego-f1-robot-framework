*** Settings ***
Documentation           This is some basic info about this page.
Library                 SeleniumLibrary

*** Keywords ***
Search For Products
    Input Text          id:twotabsearchtextbox          ${SEARCH_TERM}
    Click Button        id:nav-search-submit-button
