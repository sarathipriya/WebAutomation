*** Settings ***

Documentation           Starter suite for your personal website.
Library                 QWeb
Library                 Screenshot
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot
Suite Setup             Open Browser    about:blank    ${BROWSER}
Suite Teardown          CloseAllBrowsers
Test Teardown           logout           ${CopadoXpath.Profile}                     ${CopadoXpath.Logout}
*** Variables ***
${BROWSER}             Chrome
${CopadoURL}           http://robotic.copado.com
${CopadoUsername}      sarathipriyaramesh25@gmail.com
${CopadoPassword}      Priya@2021

*** Test Cases ***
Login copado
    [Documentation]    Testcase to verify the login fuctionality of Copado Tool
    LoginDetails       ${CopadoURL}      ${CopadoXpath.user}     ${CopadoUsername}    ${CopadoXpath.password}    ${CopadoPassword}
    ClickElement     ${CopadoXpath.submit}
    VerifyElement    ${CopadoXpath.Loginverify}
    ClickText        Run example tests
     ClickText        Starter suite
     ${all_options}=                      GetDropDownValues                    ${CopadoXpath.drop}
     log                 ${all_options}       
     DropDown         ${CopadoXpath.drop}     All     anchor="1"
     DropDown         ${CopadoXpath.drop1}    Yes     anchor="1"
     ClickElement     ${CopadoXpath.drop2}
     VerifySelectedOption                 ${CopadoXpath.drop}         All
     VerifySelectedOption                 ${CopadoXpath.drop1}        Yes                
     SwitchWindow                        2  
     Take Screenshot                      name="screenshot"                   