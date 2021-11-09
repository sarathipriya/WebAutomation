*** Settings ***
Documentation           Starter suite for your personal website.
Library                 QWeb
*** Variables ***
&{QentinelXpath}             CartValue=xpath=//span[text()="$9.00"]    GreenBg==xpath=//div[@style="background-color: #67aa79"]    Greenimg==xpath=/html/body/div[2]/section/div/div/div[1]/div[2]/a/img    
&{xpathv}             user=xpath=//span[text()="$9.00"]    user1=xpath=//div[@style="background-color: #67aa79"]    user2=xpath=/html/body/div[2]/section/div/div/div[1]/div[2]/a/img    user3=xpath=//div[@style="background-color: #dfd3c2"]    user4=xpath=/html/body/div[2]/section/div/div/div[1]/div[1]/a
&{xpathv1}            user=xpath=//input[@id="email"]       user1=xpath=//input[@id="password"]                      submit=xpath=//button[@id="submit"]                     verify1=xpath=//img[@alt="Copado Robotic Testing"]                   drop=xpath=//select[@id="record"]    drop1=xpath=//select[@id="stream"]    drop2=xpath=//button[@id="suite-run-btn"]    logoutimg=xpath=//img[@src="/new/ui/user/875/avatar"]    logout=xpath=//a[text()="Log out"]
${PASSWD}             Priya@2021