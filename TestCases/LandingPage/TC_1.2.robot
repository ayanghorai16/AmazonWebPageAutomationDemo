*** Settings ***
Library    SeleniumLibrary
Resource    ../../Keywords/keywords.robot
Resource    ../../Data/TestData.robot
Resource    ../../Pages/LandingPage.robot

*** Keywords ***
TC_1.2
    [Documentation]    "Update Location" section validation
    Log    TC_1.2 Starting
    Open Amazon Webpage
    Amazon Logo Validation
    Clicking On Upload Location
    Choose Your Location Popup Massage Heading Validation
    Choose Your Location Popup Massage Subtext Validation
    Sign In to see Your Address Validation
    Or enter an Indian pincode Massage validation
    Pincode Input Box Available validation
    Apply Button Present Validation
    Closing Choose Your Location Popup and Closed Validation

    Close browser
    Log    TC_1.2 End