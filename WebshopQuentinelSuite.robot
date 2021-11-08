*** Settings ***

Documentation           New test suite
Library                 QWeb
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers

*** Test Cases ***

Test Case 1
# Tip: Everything that starts with # is a guidance for you and will not get executed.

*** Settings ***

Documentation           Starter suite for your personal website.
Library                 QWeb
Suite Setup             Open Browser    about:blank    ${BROWSER}
Suite Teardown          Close All Browsers

# Tip: The Settings section is where you define test suite level configuration.
#      Suite Setup and Teardown are actions that happen before and after a test suite run.
#      For first time users, we don't recommend to change

*** Variables ***

# TIP: You could also use "Firefox" (without quotes) below.
${BROWSER}            Chrome

*** Test Cases ***

# Tip: Test cases start from here. The structure of a test case is as follows:
#      Name of the test
#          [Documentation]    A short explanation of the test.
#          Test steps
#
#      A new test case starts from the beginning of the line. Each test step starts with four
#      spaces, followed by a QWord, at least four spaces, and its arguments.

Tshirt4
        [Documentation]     REPLACE_THIS_WITH_DOCUMENTATION_RELEVANT_TO_YOUR_TEST_CASE
    GoTo                https://qentinelqi.github.io/shop/
    VerifyText          Find your spirit animal
    ClickElement        //a[@href="/shop/products/elephant/"]
   VerifyText          Bumple the Elephant
   ClickElement        /html/body/div[2]/section/div/div/div[1]/div[3]/div[2]
   

    
# Pro Tip: Make sure that when each test case starts, your application is in a well-defined
#          initial state. The test cases above use GoTo with a fixed URL to set the initial
#          application state, but we recommend starting each test case with the dedicated
#          AppState QWord. The test case below starts with AppState Home, where Home is an
#          initial state defined in the Keywords section at the end of the file. More initial
#          states could be defined as needed.
