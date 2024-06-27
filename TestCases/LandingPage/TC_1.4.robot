*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/keywords.robot
Resource    ../../Data/TestData.robot
Resource    ../../Pages/LandingPage.robot

*** Keywords ***
TC_1.4
    [Documentation]    Item search functionality validation
    Log    TC_1.4 Starting
    Open Amazon Webpage
    Amazon Logo Validation
    Search Functionality Validation    Mobile

    Close browser
    Log    TC_1.4 End