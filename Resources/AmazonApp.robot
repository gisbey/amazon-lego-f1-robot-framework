*** Settings ***
Documentation                               This is some basic info about this page.
Resource                                    ../Resources/PO/Cart.robot
Resource                                    ../Resources/PO/LandingPage.robot
Resource                                    ../Resources/PO/Product.robot
Resource                                    ../Resources/PO/SearchResults.robot
Resource                                    ../Resources/PO/SignIn.robot
Resource                                    ../Resources/PO/TopNav.robot

*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Accept Cookies
    TopNav.Search For Products
    SearchResults.Verify Search Completed

Select Product From Search Results
    SearchResults.Clink Product Image
    Product.Verify Product Loaded

Add Product To Cart
    Product.Add to Cart
    Product.Verify Product Added

Begin Checkout
    Cart.Proceed To Checkout
    SignIn.Verify Page Loaded
