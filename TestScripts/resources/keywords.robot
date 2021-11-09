*** Settings ***
Documentation           User Keywords for web features. It enables code reusability
Library                 QWeb
*** Keywords ***
QentinelLOGIN 
    [Documentation]                 User keyword to login to a URL and verify the text given by user
    [Arguments]                     ${URL}                      ${Text}
    GoTo                        ${URL}
    VerifyText                 ${Text}

Verify Page Text
    [Documentation]    User keyword to verify the selected item and price is viewing based on user input
    [Arguments]        ${name}                        ${text}
    ClickText          ${name}
    VerifyText         ${text}
Add to Cart
    [Documentation]    User keyword to add the items in cart
    [Arguments]        ${Item}                        ${Cart}
    ClickText          ${Item}
    VerifyText         ${Cart}
Verify Cart Value
    [Documentation]    User keyword to verify the cart value 
    [Arguments]        ${XpathValue}  
    VerifyElement      ${XpathValue}  
LoginDetails
    [Documentation]    User keyword to get login details                           
    [Arguments]       ${URL}      ${userxpath}    ${username}    ${passwordxpath}     ${passwrod}
    GoTo              ${URL}  
    ClickElement     ${userxpath}
    TypeText         ${userxpath}                      ${username} 
    ClickElement     ${passwordxpath}
    TypeSecret       ${passwordxpath}                 ${passwrod} 
logout
     [Documentation]    User keyword to verify logout                           
    [Arguments]        ${profile}                    ${logout}
     ClickElement     ${profile}
     ClickElement     ${logout} 
     VerifyText       LOGIN