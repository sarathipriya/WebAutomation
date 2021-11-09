*** Settings ***
Documentation           Starter suite for your personal website.
Library                 QWeb
*** Variables ***
&{QentinelXpath}             CartValue=xpath=//span[text()="$9.00"] 
&{UIpath}                    GreenBg=xpath=//div[@style="background-color: #67aa79"]    GreenImg=xpath=/html/body/div[2]/section/div/div/div[1]/div[2]/a/img    CreamBG=xpath=//div[@style="background-color: #dfd3c2"]    CreamImg=xpath=/html/body/div[2]/section/div/div/div[1]/div[1]/a
&{CopadoXpath}            user=xpath=//input[@id="email"]       password=xpath=//input[@id="password"]                      submit=xpath=//button[@id="submit"]                     Loginverify=xpath=//img[@alt="Copado Robotic Testing"]                   selectrecord=xpath=//select[@id="record"]    selectstream=xpath=//select[@id="stream"]    Clickrun=xpath=//button[@id="suite-run-btn"]    Profile=xpath=//img[@src="/new/ui/user/875/avatar"]    Logout=xpath=//a[text()="Log out"]