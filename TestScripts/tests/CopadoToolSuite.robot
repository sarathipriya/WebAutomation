*** Settings ***

Documentation           Starter suite for your personal website.
Library                 QWeb
Library                 Screenshot
Resource                ../resources/keywords.robot
Resource                ../resources/locators.robot
Test Setup             Open Browser    about:blank    ${BROWSER}
Test Teardown          Close All Browsers
*** Variables ***
${CopadoUsername}      sarathipriyaramesh25@gmail.com
${CopadoPassword}      Priya@2021