*** Settings ***

Documentation           Starter suite for your personal website.
Library                 QWeb
Library                 Screenshot
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot
Test Setup             Open Browser    about:blank    ${BROWSER}
Test Teardown          Close All Browsers
*** Variables ***
${BROWSER}             Chrome
${CopadoURL}           http://robotic.copado.com
${CopadoUsername}      sarathipriyaramesh25@gmail.com
${CopadoPassword}      Priya@2021

*** Test Cases ***
Login copado
    [Documentation]    Testcase to verify the login fuctionality of Copado Tool
     GoTo             http://robotic.copado.com
     ClickElement     ${CopadoXpath.user}
     TypeText         ${CopadoXpath.user}                        ${CopadoUsername}
     ClickElement     ${CopadoXpath.password} 
     TypeSecret       ${CopadoXpath.password}                    ${CopadoPassword}  
     ClickElement     ${CopadoXpath.submit}
     VerifyElement    ${CopadoXpath.Loginverify}
     ClickElement     ${CopadoXpath.Profile}
     ClickElement     ${CopadoXpath.Logout} 
     VerifyText       LOGIN
