*** Settings ***
Documentation               This file contains keywords for the Amazon UK top nav
Library                     SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR}        id:twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON}     id:nav-search-submit-button

*** Keywords ***
Search For Products
    Input Text              ${TOPNAV_SEARCH_BAR}          ${SEARCH_TERM}
    Click Button            ${TOPNAV_SEARCH_BUTTON}
