*** Settings ***
Library    SeleniumLibrary
Resource    ../Data/TestData.robot

*** Variables ***


*** Keywords ***
Open Amazon Webpage
    Open Browser    ${Amazon_URL}    CHROME
    Maximize Browser Window
    Sleep    ${T2}

Click On Element
    [Arguments]    ${Button}
    Scroll element into view    ${Button}
    Wait until element is visible    ${Button}    ${T7}
    Click element    ${Button}
    Sleep    ${T2}

Text Validation
    [Arguments]    ${Text_xpath}    ${Text_Expected}
    Scroll element into view    ${Text_xpath}
    Wait until element is visible    ${Text_xpath}    ${T7}
    ${Text1}=     Get text    ${Text_xpath}
    Should be equal    ${Text1}    ${Text_Expected}
