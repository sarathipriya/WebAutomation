*** Settings ***
Library           QWeb
Variables         ../dataInputs/CongfigUIdata.yaml 
#Resource          locators
#Resource          ../resources/locators.robot
Variables         ../resources/locators.robot
*** Variables ***

#&{​​​​​QentinelXpath}​​​​​    CartValue=xpath=//span[text()="$9.00"] 

*** Keywords ***

LoginQentinel
    [Arguments]               ${URL}    ${Text}
    [Documentation]    User keyword to login to a URL and verify the text given by user
   # log               ${arg1}
    GoTo              ${URL}​​​​​
    VerifyText        ${Text}​​​​​

Verify Page Text

    [Arguments]    ${​​​​​name}​​​​​    ${​​​​​text}​​​​​

    [Documentation]    User keyword to verify the selected item and price is viewing based on user input

    ClickText    ${​​​​​name}​​​​​

    VerifyText    ${​​​​​text}​​​​​

