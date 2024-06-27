*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/keywords.robot
Resource    ../../Data/TestData.robot
Resource    ../../Pages/LandingPage.robot

*** Keywords ***
TC_1.5
    [Documentation]    Language Selection dropdown validation
    Log    TC_1.5 Starting
    Open Amazon Webpage
    Amazon Logo Validation
    Language Selection Dropdown Validation

    Close browser
    Log    TC_1.5 End