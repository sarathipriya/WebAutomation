*** Settings ***
Documentation     Test suite for Quentinel WebShop.
Library           QWeb
#Variables         ../dataInputs/CongfigUIdata.yaml 

*** Variables ***

&{​​​​​QentinelXpath}​​​​​    CartValue=xpath=//span[text()="$9.00"]     ele=xpath=//h2[text()="Find your spirit animal"]