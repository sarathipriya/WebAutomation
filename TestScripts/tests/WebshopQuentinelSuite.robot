# Tip: Everything that starts with # is a guidance for you and will not get executed.

*** Settings ***

Documentation           Starter suite for your personal website.
Library                 QWeb
Library                 Screenshot
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot
Test Setup             Open Browser    about:blank    ${BROWSER}
Test Teardown          Close All Browsers

#  The Settings section is where you define test suite and testcase level configuration.
#  Test Setup and Teardown are actions that happen before and after a test case run.

*** Variables ***

# TIP: You could also use "Firefox" (without quotes) below.
${BROWSER}            Chrome
${QentinelqiURL}                https://qentinelqi.github.io/shop/
${QentinelqiText}               Find your spirit animal  
${TshirtGiraffe}                Gerald the Giraffe 
${GiraffeTshirtPrice}           $9.00  

*** Test Cases ***        
Login qentinelqi
    [Documentation]     TESTCASE TO VERIFY THE LOGIN FUNCTIONALITY OF QENTINELWEBSHOP
#Test Steps
    QentinelLOGIN                     ${QentinelqiURL}         ${QentinelqiText}

Verify Tshirt Price
     [Documentation]     TESTCASE TO VERIFY THE PRICE OF THE SELECTED TSHIRT IS $9.00
#Test Steps
    QentinelLOGIN                     ${QentinelqiURL}         ${QentinelqiText}
    Verify Page Text                  ${TshirtGiraffe}         ${GiraffeTshirtPrice}
        
Verify Cart
    [Documentation]    TESTCASE TO VERIFY THE USER IS ABLE TO ADD THE TSHIRT TO SHOPPING CART
#Test Steps
    QentinelLOGIN                     ${QentinelqiURL}         ${QentinelqiText}
    Verify Page Text                  ${TshirtGiraffe}         ${GiraffeTshirtPrice}
    Add to Cart                       Add to cart                        Cart summary        

Verify Cart Value
    [Documentation]    TESTCASE TO VERIFY THE CART VALUE IS USER EXPECTED VALUE OR NOT
#Test Steps
    QentinelLOGIN                     ${QentinelqiURL}         ${QentinelqiText}
    Verify Page Text                  ${TshirtGiraffe}         ${GiraffeTshirtPrice}
    Add to Cart                       Add to cart                        Cart summary
   Verify Cart Value                 ${QentinelXpath.CartValue}      
                          
                        