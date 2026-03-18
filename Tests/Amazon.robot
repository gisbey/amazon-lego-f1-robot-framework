*** Settings ***
Documentation                                       This suite allows an unauthenticated user to navigate to Amazon UK,
...                                                 search for a LEGO F1 car of their choice, select it, and add it to
...                                                 their basket. Crucially, they cannot actually order the car
...                                                 without logging into an Amazon account

Resource                                            ../Resources/AmazonApp.robot
Resource                                            ../Resources/Common.robot

Suite Setup                                         Insert Testing Data
Test Setup                                          Begin Web Test
Test Teardown                                       End Web Test
Suite Teardown                                      Cleanup Testing Data

#Run the script:
#robot -d results Tests/amazon.robot                To run all tests in a file.
#robot -d results -i smoke Tests/amazon.robot        To run tagged tests in a file.
#robot -d results Tests                             To run all tests in a directory.
#robot -d results -N "Full Regression" Tests        To run all tests with custom name in a directory.

*** Variables ***
${BROWSER}                                          chrome
${START_URL}                                        https://www.amazon.co.uk/
${SEARCH_TERM}                                      LEGO Speed Champions Ferrari SF-24

*** Test Cases ***
Unauthenticated user can search for products
    [Documentation]                                 Check an unauthenticated user can search for products on Amazon UK
    [Tags]                                          F1
    AmazonApp.Search For Products
    Sleep                                           5s

Unauthenticated user can search for products and select an item
    [Documentation]                                 Check an unauthenticated user can search for products and select an
    ...                                             item on Amazon UK
    [Tags]                                          F1
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results
    Sleep                                           5s

Unauthenticated user can search for products, select an item and add it to their basket
    [Documentation]                                 Check an unauthenticated user can search for products, select an
    ...                                             item, and add it to their basket on Amazon UK
    [Tags]                                          F1
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Add Product To Basket
    Sleep                                           5s

Unauthenticated user can search for products, select an item and add it to their basket, but has to log in to purchase
    [Documentation]                                 Check an unauthenticated user can search for products, select an
    ...                                             item, and add it to their basket on Amazon UK, but they have to log
    ...                                             in to purchase
    [Tags]                                          F1
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Add Product To Basket
    AmazonApp.Begin Checkout
    Sleep                                           5s
