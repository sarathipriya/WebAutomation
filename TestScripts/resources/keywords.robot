*** Settings ***

Variables         ../dataInputs/CongfigUIdata.yaml 

*** Variables ***

&{​​​​​QentinelXpath}​​​​​    CartValue=xpath=//span[text()="$9.00"] 

*** Keywords ***

Login_Qentinel
    [Arguments]               ${​​​​​QentinelURL}    ${​​​​​QentinelText}

   # [Arguments]               ${​​​​​QentinelURL}​​​​    ${}​​​​​

    [Documentation]    User keyword to login to a URL and verify the text given by user
    log                ${​​​​​QentinelURL}​​​​​   
    GoTo               ${​​​​​QentinelURL}​​​​​

    VerifyText         ${​​​​​QentinelText}​​​​​ 

Verify Page Text

    [Arguments]    ${​​​​​name}​​​​​    ${​​​​​text}​​​​​

    [Documentation]    User keyword to verify the selected item and price is viewing based on user input

    ClickText    ${​​​​​name}​​​​​

    VerifyText    ${​​​​​text}​​​​​

