
Load The System Console SKU Builder Page
    Wait Until Element Is Visible    ${sku_page_locators.title}    ${LG_TIME}

Navigate To The System Console SKU Builder Page
    Click Element                    dom:${sku_page_locators.sku_tab}
    Wait Until Element Is Visible    dom:${sku_page_locators.sku_iframe}    ${LG_TIME}

Select Main Iframe from System Console SKU Builder Page
    Wait Until Element Is Visible    dom:${sku_page_locators.sku_iframe}    ${LG_TIME}
    Select Frame                     dom:${sku_page_locators.sku_iframe}
    Wait Until Element Is Visible    ${sku_page_locators.title}         ${LG_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}

Unselect Main Iframe from System Console SKU Builder Page
    Unselect Frame

Click On Expand/Collapse Button From A SKU
    [Arguments]    ${SKU_NAME}
    Sleep    ${UL_TIME}
    ${XPATH_SKU_NAME} =    list_xpath.Obtain Xpath To Button Sku    ${SKU_NAME}
    Wait Until Element Is Visible    ${XPATH_SKU_NAME}    ${LG_TIME}
    Click Element                    ${XPATH_SKU_NAME}

Click On Edit Button
    Sleep    ${SH_TIME}
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.edit_button}    ${LG_TIME}
    Click Element                    ${sku_page_locators.edit_button}

Click On New Button
    Wait Until Element Is Visible    ${sku_page_locators.new_sku}    ${LG_TIME}
    Click Element                    ${sku_page_locators.new_sku}

Click On Button From SKU Tree In An Entitlement
    [Arguments]    ${ENTITLEMENT_NAME}
    ${XPATH_ENTITLEMENT_NAME} =    list_xpath.Obtain Xpath Tree Entitlement Button    ${ENTITLEMENT_NAME}
    Wait Until Element Is Visible    ${XPATH_ENTITLEMENT_NAME}    ${LG_TIME}
    Click Element                    ${XPATH_ENTITLEMENT_NAME}

Validate That The List Entitlements Are Shown In View Mode
    Wait Until Element Is Visible    ${sku_page_locators.entitlement_label}         ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.entitlement_type_label}    ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.category_label}            ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.includes_label}            ${LG_TIME}

Validate That The Fields Are Displayed In The SKU Edit Form
    Wait Until Element Is Visible    ${sku_page_locators.sku_if_label}         ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.name_label}           ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.type_label}           ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.description_label}    ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.parent_label}         ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.prov_type_label}      ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.sku_if_input}         ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.name_input}           ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.type_menu}            ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.description_input}    ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.parent_menu}          ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.prov_type_menu}       ${LG_TIME}
    Validate That The List Entitlements Are Shown In View Mode

Enter Text In SKU ID Input Text
    Wait Until Element Is Visible    ${sku_page_locators.sku_if_input}    ${LG_TIME}
    ${SKU_ID} =    Collections.Get From Dictionary    ${SKU_VARIABLES}    SKU_ID
    Input Text    ${sku_page_locators.sku_if_input}    ${SKU_ID}

Enter Text In Name Input Text
    Wait Until Element Is Visible    ${sku_page_locators.name_input}        ${LG_TIME}
    ${SKU_NAME} =    Collections.Get From Dictionary    ${SKU_VARIABLES}    SKU_NAME
    Input Text    ${sku_page_locators.name_input}    ${SKU_NAME}

Enter Text In Description Input Text
    Wait Until Element Is Visible    ${sku_page_locators.description_input}        ${LG_TIME}
    ${SKU_DESCRIPTION} =    Collections.Get From Dictionary    ${SKU_VARIABLES}    SKU_DESCRIPTION
    Input Text    ${sku_page_locators.description_input}    ${SKU_DESCRIPTION}

Select A Type In Menu Selector About Type
    Wait Until Element Is Visible    ${sku_page_locators.type_menu}         ${LG_TIME}
    ${SKU_TYPE} =    Collections.Get From Dictionary    ${SKU_VARIABLES}    SKU_TYPE
    ${XPATH_SKU_TYPE} =    list_xpath.Obtain Xpath For Select Type          ${SKU_TYPE}
    Click Element    ${sku_page_locators.type_menu}
    Click Element    ${XPATH_SKU_TYPE}

Remove Text In SKU ID Input Text
    Wait Until Element Is Visible    ${sku_page_locators.sku_if_input}    ${LG_TIME}
    Clear Element Text    ${sku_page_locators.sku_if_input}
    Input Text            ${sku_page_locators.sku_if_input}    a
    Press Keys            ${sku_page_locators.sku_if_input}    BACKSPACE

Remove Text In Name Input Text
    Wait Until Element Is Visible    ${sku_page_locators.name_input}    ${LG_TIME}
    Clear Element Text    ${sku_page_locators.name_input}
    Input Text            ${sku_page_locators.name_input}    a
    Press Keys            ${sku_page_locators.name_input}    BACKSPACE

Remove Text In Description Input Text
    Wait Until Element Is Visible    ${sku_page_locators.description_input}    ${LG_TIME}
    Clear Element Text    ${sku_page_locators.description_input}
    Input Text            ${sku_page_locators.description_input}    a
    Press Keys            ${sku_page_locators.description_input}    BACKSPACE

Save Button Enabled
    Wait Until Element Is Visible    ${sku_page_locators.save_button}             ${LG_TIME}
    Element Should Not Be Visible    ${sku_page_locators.save_button_disabled}    ${LG_TIME}

Save Button Disabled
    Wait Until Element Is Visible    ${sku_page_locators.save_button_disabled}    ${LG_TIME}

Click On Save Button
    Wait Until Element Is Visible    ${sku_page_locators.save_button}    ${LG_TIME}
    Click Element                    ${sku_page_locators.save_button}

Search A SKU With The Search Bar
    [Arguments]    ${SKU_NAME}
    Wait Until Element Is Visible    ${sku_page_locators.search_text}    ${LG_TIME}
    Input Text                       ${sku_page_locators.search_text}    ${SKU_NAME}
    Press Keys                       ${sku_page_locators.search_text}    ENTER
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${XPATH_SKU_NAME} =    list_xpath.Obtain Xpath To Sku Searched    ${SKU_NAME}
    Wait Until Element Is Visible    ${XPATH_SKU_NAME}    ${LG_TIME}

Remove Text In Search Bar
    Wait Until Element Is Visible    ${sku_page_locators.search_text}    ${LG_TIME}
    Clear Element Text    ${sku_page_locators.search_text}
    Input Text            ${sku_page_locators.search_text}    a
    Press Keys            ${sku_page_locators.search_text}    BACKSPACE

Enter Text In Name Input Text For Edit Option
    Wait Until Element Is Visible    ${sku_page_locators.name_input}        ${LG_TIME}
    ${SKU_NAME} =    Collections.Get From Dictionary    ${SKU_VARIABLES}    SKU_EDIT_NAME
    Input Text    ${sku_page_locators.name_input}    ${SKU_NAME}

Click On OK Button About Success Pop Up
    Wait Until Element Is Visible    ${sku_page_locators.pop_up_success_message}    ${LG_TIME}
    Wait Until Element Is Visible    ${sku_page_locators.ok_button}                 ${LG_TIME}
    Click Element                    ${sku_page_locators.ok_button}

Verify Expanded And Collapsed Buttons
    [Arguments]    ${EXPANDED}    ${COLLAPSED}
    ${XPATH_EXPANDED} =     list_xpath.Obtain Xpath To Button Expanded     ${EXPANDED}
    ${XPATH_COLLAPSED} =    list_xpath.Obtain Xpath To Button Collapsed    ${COLLAPSED}
    Wait Until Element Is Visible    ${XPATH_EXPANDED}     ${LG_TIME}
    Wait Until Element Is Visible    ${XPATH_COLLAPSED}    ${LG_TIME}

Select A Pagination
    [Arguments]    ${NUMBER}
    Wait Until Element Is Visible    ${sku_page_locators.pagination_listbox}    ${LG_TIME}
    Click Element                    ${sku_page_locators.pagination_listbox}
    ${XPATH} =    list_xpath.Obtain Xpath Pagination Sku    ${NUMBER}
    Wait Until Element Is Visible    ${XPATH}     ${LG_TIME}
    Click Element                    ${XPATH}