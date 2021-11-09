*** Settings ***
Documentation     Test suite for Quentinel WebShop.
Library           QWeb
Library           Screenshot
Resource          ../resources/keywords.robot
Resource          ../resources/locators.robot
Test Setup        Open Browser    about:blank    ${BROWSER}
Test Teardown     Close All Browsers    # The Settings section is where you define test suite level configuration.    #    Test Setup and Teardown are actions that happen before and after a test case run.


*** Variables ***
# You could also use "Firefox" (without quotes) below.
&{Xpath​​​​​Qentinel}​​​​​    CartValue=xpath=//span[text()="$9.00"]     ele=xpath=//h2[text()="Find your spirit animal"]        
${BROWSER}        Chrome
${QentinelURL}            https://qentinelqi.github.io/shop 
${QentinelText}              Find your spirit animal 
#&{​​​​​QentinelXpath}​​​​​    CartValue=xpath=//span[text()="$9.00"]     ele=xpath=//h2[text()="Find your spirit animal"]                     

 
*** Test Cases ***

Loginqentinelqi

    [Documentation]    TESTCASE TO VERIFY THE LOGIN FUNCTIONALITY OF QENTINELWEBSHOP
    #    Test steps   ​​​​​    
    #GoTo                ${QentinelURL}
    #VerifyText          ${QentinelText}      
    LoginQentinel     ${QentinelURL}                       ${QentinelText}
    #LoginQentinel    ${QentinelURL}                        

Verify Tshirt Price
    [Documentation]    TESTCASE TO VERIFY THE PRICE OF THE SELECTED TSHIRT IS $9.00
    Login_Qentinel    ${Qentinelqi.URL}    ${Qentinelqi.Text}
    Verify Page Text    ${Qentinelqi.TshirtName}    ${Qentinelqi.TshirtPrice}
 
Verify Cart
    [Documentation]    TESTCASE TO VERIFY THE USER IS ABLE TO ADD THE TSHIRT TO SHOPPING CART
    Login_Qentinel    ${Qentinelqi.URL}    ${Qentinelqi.Text}
    Verify Page Text    ${Qentinelqi.TshirtName}    ${Qentinelqi.TshirtPrice}
    Verify Page Text    ${Qentinelqi.Cart}    ${Qentinelqi.Cartsummary}
 
Verify Cart Value
    [Documentation]    TESTCASE TO VERIFY THE CART VALUE IS USER EXPECTED VALUE OR NOT
    Login_Qentinel    ${Qentinelqi.URL}    ${Qentinelqi.Text}
    Verify Page Text    ${Qentinelqi.TshirtName}    ${Qentinelqi.TshirtPrice}
    Verify Page Text    ${Qentinelqi.AddCart}    ${Qentinelqi.Cartsummary}
    VerifyElement    ${QentinelXpath.CartValue}