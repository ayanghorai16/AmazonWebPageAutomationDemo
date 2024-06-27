*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/keywords.robot
Resource    ../../Data/TestData.robot
Resource    ../../Pages/LandingPage.robot

*** Keywords ***
TC_1.3
    [Documentation]    Search Bar All dropdown section validation
    Log    TC_1.3 Starting
    Open Amazon Webpage
    Amazon Logo Validation
    Search Bar Dropdown Present Validation
    Any Option Selection From Search Bar Dropdown Validation    Deals

    Close browser
    Log    TC_1.3 End