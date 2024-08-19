Load Label Page
    Wait Until Element Is Visible    ${labels_page_locators.labels_nav}                  ${TIME}
    Wait Until Element Is Visible    ${labels_page_locators.label_title}                 ${TIME}
    Wait Until Element Is Visible    ${labels_page_locators.add_label_button}            ${TIME}

Click Add Label 
    Wait Until Element Is Visible    ${labels_page_locators.add_label_button}            ${TIME}
    Click Element                    ${labels_page_locators.add_label_button}

Create Label
    [Arguments]    ${label} 
    Wait Until Element Is Visible    ${labels_page_locators.label_category_input}        ${TIME}
    Input Text                       ${labels_page_locators.label_category_input}        ${label} 

Click Submit Label 
    Wait Until Element Is Visible    ${labels_page_locators.label_category_button}       ${TIME}
    Click Element                    ${labels_page_locators.label_category_button}

Generate Random Values   
    ${totalMiles}=    Generate Random String    3    [NUMBERS]
    [Return]    ${totalMiles}

Load Label 
    [Arguments]    ${label} 
    ${XPATH} =    list_xpath.obtain_xpath_by_label_name    ${label}
    Wait Until Element Is Visible    ${XPATH}              ${TIME}
    Scroll Element Into View         ${XPATH}
    #Click Element                    ${XPATH}
    #Sleep                            ${SH_TIME}

Error Label Greater then 63 characters
    [Arguments]    ${label} 
    ${XPATH} =    list_xpath.obtain_xpath_by_label_error         ${label}
    Wait Until Element Is Visible    ${XPATH}                    ${TIME}

Click on Add Label Value 
    [Arguments]    ${row} 
    ${XPATH} =    list_xpath.obtain_xpath_by_label_value         ${row}
    Wait Until Element Is Visible    ${XPATH}                    ${TIME}
    Click Element                                                ${XPATH}
    Sleep                                                        ${SH_TIME}

Create Label Value 
    [Arguments]    ${labelValue}
    Wait Until Element Is Visible    ${labels_page_locators.label_value_input}            ${TIME}
    Input Text                       ${labels_page_locators.label_value_input}            ${labelValue}
    

Save Label Value
    Wait Until Element Is Visible    ${labels_page_locators.label_category_button}       ${TIME}
    Click Button                     ${labels_page_locators.label_category_button}

Label Value Warning 
    Wait Until Element Is Visible    ${labels_page_locators.warning_label_value}          ${TIME}

Click Title 
    Double Click Element    ${labels_page_locators.label_title}                                  

Text Box shoul not be Visible 
    Element Should Not Be Visible    ${labels_page_locators.label_value_input}            ${TIME}

Label category Warning 
    Wait Until Element Is Visible    ${labels_page_locators.warning_label_category}       ${TIME}

Load Label Value
    [Arguments]    ${label} 
    ${XPATH} =    list_xpath.obtain_xpath_by_label_value_name   ${label}
    Wait Until Element Is Visible    ${XPATH}                   ${TIME}
    Scroll Element Into View         ${XPATH}
    #Click Element                    ${XPATH}
    #Sleep                            ${SH_TIME} 