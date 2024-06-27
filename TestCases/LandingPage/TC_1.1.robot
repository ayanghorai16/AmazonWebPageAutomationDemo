*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/keywords.robot
Resource    ../../Data/TestData.robot
Resource    ../../Pages/LandingPage.robot

*** Keywords ***
TC_1.1
    [Documentation]    User able to open Amazon web page validation
    Log    TC_1.1 Starting
    Open Amazon Webpage
    Amazon Logo Validation
    Close browser
    Log    TC_1.1 End
