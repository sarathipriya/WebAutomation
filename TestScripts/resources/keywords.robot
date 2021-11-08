*** Settings ***

Variables         ../dataInputs/CongfigUIdata.yaml 

*** Variables ***

&{​​​​​QentinelXpath}​​​​​    CartValue=xpath=//span[text()="$9.00"] 
${​​​​​QentinelURL}            https://qentinelqi.github.io/shop/
${​​​​​QentinelText}            Find your spirit animal

*** Keywords ***

Login_Qentinel

    [Arguments]    ${​​​​​QentinelURL}​​​​​    ${​​​​​Qentinel​​​​​Text}​​​​​

    [Documentation]    User keyword to login to a URL and verify the text given by user

    GoTo    ${​​​​​QentinelURL}​​​​​

    VerifyText    ${​​​​​Text}​​​​​ Verify Page Text

    [Arguments]    ${​​​​​name}​​​​​    ${​​​​​text}​​​​​

    [Documentation]    User keyword to \ verify the selected item and price is viewing based on user input

    ClickText    ${​​​​​name}​​​​​

    VerifyText    ${​​​​​text}​​​​​

