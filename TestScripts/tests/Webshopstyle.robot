*** Settings ***

Documentation           Starter suite for your personal website.
Library                 QWeb
Library                 Screenshot
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot
Test Setup             Open Browser    about:blank    ${BROWSER}
Test Teardown          Close All Browsers
*** Variables ***

# TIP: You could also use "Firefox" (without quotes) below.
${BROWSER}            Chrome
${QentinelqiURL}                https://qentinelqi.github.io/shop/
${QentinelqiText}               Find your spirit animal

*** Test Cases *** 
TshirtCSSStyle 
  [Documentation]     REPLACE_THIS_WITH_DOCUMENTATION_RELEVANT_TO_YOUR_TEST_CASE
    QentinelLOGIN                     ${QentinelqiURL}         ${QentinelqiText}
    Verify Page Text    Bumble the Elephant                    Bumble the Elephant
    ClickElement        ${UIpath.GreenBg} 
    VerifyElement       ${UIpath.Greenimg}
    ClickElement        ${UIpath.CreamBG} 
    VerifyElement       ${UIpath.CreamImg} 
Check
  [Documentation]     REPLACE_THIS_WITH_DOCUMENTATION_RELEVANT_TO_YOUR_TEST_CASE
    GoTo                https://qentinelqi.github.io/shop/
    VerifyText          Find your spirit animal
    ClickText           Bumble the Elephant
    VerifyText          Bumble the Elephant
    ClickElement        ${xpathv.user1} 
    VerifyElement       ${xpathv.user2}
    ClickElement        ${xpathv.user3} 
    VerifyElement       ${xpathv.user4} 
