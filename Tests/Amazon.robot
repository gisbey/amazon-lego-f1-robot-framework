*** Settings ***
Documentation                                       This suite enables an unauthenticated user to browse Amazon UK,
...                                                 search for a LEGO F1 car, select a product, and add it to their
...                                                 basket. However, placing an order requires logging into an
...                                                 Amazon account.

Resource                                            ../Resources/AmazonApp.robot
Resource                                            ../Resources/Common.robot

Suite Setup                                         Insert Testing Data
Test Setup                                          Begin Web Test
Test Teardown                                       End Web Test
Suite Teardown                                      Cleanup Testing Data

#Run the script:
#robot -d results Tests/amazon.robot                To run all tests in a file.
#robot -d results -i F1 Tests/amazon.robot          To run tagged tests in a file.
#robot -d results Tests                             To run all tests in a directory.
#robot -d results -N "Full Regression" Tests        To run all tests in a directory and add a custom report name.

*** Variables ***
${BROWSER_TYPE}                                     chrome
${START_URL}                                        https://www.amazon.co.uk/
${SEARCH_TERM}                                      LEGO Speed Champions Ferrari SF-24

*** Test Cases ***
Can search for product as unauthenticated user
    [Documentation]                                 Check an unauthenticated user can search for products on Amazon UK
    AmazonApp.Search For Products

Can select item as unauthenticated user
    [Documentation]                                 Check an unauthenticated user can select an item on Amazon UK
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results

Can add item to basket as unauthenticated user
    [Documentation]                                 Check an unauthenticated user can add an item to their basket on
    ...                                             Amazon UK
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Add Product To Basket

Proceeding to checkout as unauthenticated user takes user to login page
    [Documentation]                                 Check that, when an unauthenticated user proceeds to checkout, they
    ...                                             are taken to the login page on Amazon UK
    [Tags]                                          F1
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Add Product To Basket
    AmazonApp.Begin Checkout
    Sleep                                           5s
