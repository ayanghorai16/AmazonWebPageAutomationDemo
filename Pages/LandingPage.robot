*** Settings ***
Library    SeleniumLibrary
Resource    ../Data/TestData.robot
Resource    ../Keywords/keywords.robot

*** Variables ***
${Amazon_Logo}    //a[@aria-label="Amazon.in"]
${Upload_Location}    //span[contains(text(),"Update location")]

#Choose your location(CYL)
${Choose_your_location_Heading}      //h4[contains(text(),"Choose your location")]
${CYL_popup_massage}    //span[contains(text(),"Select a delivery location to see product availability and delivery options")]
${CYL_Sign_in_to_see_your_addresses}    //span[contains(text(),"Sign in to see your addresses")]
${CYL_or_enter_an_Indian_pincode}    //h5[contains(text(),"or enter an Indian pincode")]
${CYL_Pincode_input_box}    //input[@aria-label="or enter an Indian pincode"]
${CYL_Apply_Button}    //span[contains(text(),"Apply")]
${CYL_popup_close}    //button[@aria-label="Close"]

#Search Bar(SB)
${SB_dropdown}    (//div[@class="nav-left"])[2]
${SB_deals}    //option[contains(text(),"Deals")]
${SB_Selected_Option}    //span[contains(text(),"Deals")]
${xpath_p1}    //option[contains(text(),"
${xpath_p2}    //span[contains(text(),"
${xpath_end}    ")]
${Search_Box}    //input[@aria-label="Search Amazon.in"]
${Search_Button}    //input[@value="Go"]
${SB_label}    //label[contains(text(),"Search Amazon.in")]
${SB}     //input[@placeholder="Search Amazon.in"]

#Language Dropdown(LD)
${LD_arrow}    (//span[@class="nav-icon nav-arrow"])[1]
${LD_bengali}    (//a[@href="#switch-lang=bn_IN"])[1]
${LD_bengali_selected}    //div[contains(text(),"BN")]

*** Keywords ***
Amazon Logo Validation
    Wait until element is visible    ${Amazon_Logo}     ${T7}

Clicking On Upload Location
    Click On Element      ${Upload_Location}

Choose Your Location Popup Massage Heading Validation
    Text Validation    ${Choose_your_location_Heading}    Choose your location

Choose Your Location Popup Massage Subtext Validation
    Text Validation    ${CYL_popup_massage}    Select a delivery location to see product availability and delivery options

Sign In to see Your Address Validation
    Text Validation    ${CYL_Sign_in_to_see_your_addresses}    Sign in to see your addresses


or enter an Indian pincode Massage validation
    Text Validation    ${CYL_or_enter_an_Indian_pincode}    or enter an Indian pincode

Pincode Input Box Available validation
    Wait until element is visible    ${CYL_Pincode_input_box}    ${T7}

Apply Button Present Validation
    Wait until element is visible    ${CYL_Apply_Button}    ${T7}

Closing Choose Your Location Popup and Closed Validation
    Click On Element    ${CYL_popup_close}
    Wait until element is not visible    ${Choose_your_location_Heading}    ${T7}

Search Bar Dropdown Present Validation
    Wait until element is visible    ${SB_dropdown}     ${T7}

Any Option Selection From Search Bar Dropdown Validation
    [Arguments]    ${Required_Option}
    Click On Element    ${SB_dropdown}
    Wait until element is visible    ${xpath_p1}${Required_Option}${xpath_end}     ${T7}
    Click element    ${xpath_p1}${Required_Option}${xpath_end}
    Sleep    ${T1}
    Wait until element is visible    ${xpath_p2}${Required_Option}${xpath_end}    ${T7}

Search Functionality Validation
    [Arguments]    ${Required_Text}
    Click On Element    ${Search_Box}
    ${Text1}=     Get element attribute    ${SB}     placeholder
    ${Text2}=     Convert to string    ${Text1}
    Should be equal    ${Text2}    Search Amazon.in
    Input text    ${Search_Box}     ${Required_Text}
    Click On Element    ${Search_Button}
    Wait until element is visible    (${xpath_p2}${Required_Text}${xpath_end})[1]     ${T7}

Language Selection Dropdown Validation
    Wait until element is visible    ${LD_arrow}    ${T7}
    Mouse over    ${LD_arrow}
    Wait until element is visible    ${LD_bengali}    ${T7}
    Click On Element    ${LD_bengali}
    Wait until element is visible    ${LD_bengali_selected}     ${T7}







