*** Settings ***

Variables         ../dataInputs/CongfigUIdata.yaml 
Resource          locators
    
*** Variables ***

&{​​​​​QentinelXpath}​​​​​    CartValue=xpath=//span[text()="$9.00"] 

*** Keywords ***

Login_Qentinel
    [Arguments]               ${arg1}    ${arg2}

    [Documentation]    User keyword to login to a URL and verify the text given by user
    log               ${arg1}   
    GoTo              ${arg1}​​​​​
    VerifyText        ${arg2}​​​​​ 

Verify Page Text

    [Arguments]    ${​​​​​name}​​​​​    ${​​​​​text}​​​​​

    [Documentation]    User keyword to verify the selected item and price is viewing based on user input

    ClickText    ${​​​​​name}​​​​​

    VerifyText    ${​​​​​text}​​​​​

