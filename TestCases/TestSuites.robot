*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=${CURDIR}${/}..\\Data\\Data.csv    encoding=utf-8    dialect=excel
Test Template    Automation_Script
Library    String
Library    ExcelLibrary
Resource    ../Keywords/keywords.robot
Resource    ./LandingPage/TC_1.1.robot
Resource    ./LandingPage/TC_1.2.robot
Resource    ./LandingPage/TC_1.3.robot
Resource    ./LandingPage/TC_1.4.robot
Resource    ./LandingPage/TC_1.5.robot

Default Tags    Test


*** Test Cases ***
 ${Test Case Name}

*** Keywords ***
Automation_Script
    [Arguments]     ${Test Case Name}    ${Execution Flag}



    Run Keyword if    '${Execution Flag}'=='Y' and '${Test Case Name}'=='Open Amazon Webpage'    Run Keywords    Log    ${Test Case Name}
    ...    AND    Open Amazon Webpage

    ...  ELSE IF    '${Execution Flag}'=='Y' and '${Test Case Name}'=='TC_1.1'    Run Keywords    Log    ${Test Case Name}
    ...    AND    TC_1.1

    ...  ELSE IF    '${Execution Flag}'=='Y' and '${Test Case Name}'=='TC_1.2'    Run Keywords    Log    ${Test Case Name}
    ...    AND    TC_1.2

    ...  ELSE IF    '${Execution Flag}'=='Y' and '${Test Case Name}'=='TC_1.3'    Run Keywords    Log    ${Test Case Name}
    ...    AND    TC_1.3

    ...  ELSE IF    '${Execution Flag}'=='Y' and '${Test Case Name}'=='TC_1.4'    Run Keywords    Log    ${Test Case Name}
    ...    AND    TC_1.4

    ...  ELSE IF    '${Execution Flag}'=='Y' and '${Test Case Name}'=='TC_1.5'    Run Keywords    Log    ${Test Case Name}
    ...    AND    TC_1.5

    ...  ELSE IF    '${Execution Flag}'=='N'    Run Keywords    Skip