
Load The System Console Account Page
    IF    '${ENVIRONMENT}'=='DEPRECATED'
        Wait Until Element Is Visible    ${accounts_page_locators.title}    ${LG_TIME}
    ELSE
        Wait Until Element Is Visible    ${accounts_page_locators.title_ui}    ${LG_TIME}
    END

Navigate To The System Console Account Page
    Click Element                    dom:${accounts_page_locators.accounts_tab}
    Wait Until Element Is Visible    dom:${accounts_page_locators.accounts_iframe}    ${LG_TIME}

Search An Account from System Console Account Page
    [Arguments]    ${ACCOUNT}    ${ENVIRONMENT}
    IF    '${ENVIRONMENT}'=='DEPRECATED'
        Wait Until Element Is Visible    ${accounts_page_locators.search_text}    ${LG_TIME}
        Input Text                       ${accounts_page_locators.search_text}    ${ACCOUNT}
        Press Keys                       ${accounts_page_locators.search_text}    ENTER
        Sleep    ${SH_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.account_searched}    ${LG_TIME}
    ELSE
        Sleep    ${SH_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.search_text_ui}    ${LG_TIME}
        Input Text                       ${accounts_page_locators.search_text_ui}    ${ACCOUNT}
        Press Keys                       ${accounts_page_locators.search_text_ui}    ENTER
        Sleep    ${SH_TIME}
        ${XPATH} =    list_xpath.Obtain Xpath Business Account Name    ${ACCOUNT}
        Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    END

Select Main Iframe from System Console Account Page
    IF    '${ENVIRONMENT}'=='DEPRECATED'
        Wait Until Element Is Visible    dom:${accounts_page_locators.accounts_iframe}    ${LG_TIME}
        Select Frame                     dom:${accounts_page_locators.accounts_iframe}
        Wait Until Element Is Visible    ${accounts_page_locators.title}                  ${LG_TIME}
    ELSE
        Wait Until Element Is Visible    dom:${accounts_page_locators.accounts_iframe}    ${LG_TIME}
        Select Frame                     dom:${accounts_page_locators.accounts_iframe}
        Wait Until Element Is Visible    ${accounts_page_locators.title_ui}               ${LG_TIME}
    END

Unselect Main Iframe from System Console Account Page
    Unselect Frame

Click On Account Name from System Console Account Page
    [Arguments]    ${ACCOUNT}    ${ENVIRONMENT}
    IF    '${ENVIRONMENT}'=='DEPRECATED'
        Wait Until Element Is Visible    ${accounts_page_locators.account_searched}    ${LG_TIME}
        Click Element                    ${accounts_page_locators.account_searched}
        Wait Until Element Is Visible    ${accounts_page_locators.account_title}       ${LG_TIME}
    ELSE
        ${XPATH} =    list_xpath.Obtain Xpath Business Account Edit Button    ${ACCOUNT}
        Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
        Click Element                    ${XPATH}
        Wait Until Element Is Visible    ${accounts_page_locators.account_title_ui}    ${LG_TIME}
    END

Click On Save Button from System Console Account Page
    Wait Until Element Is Visible    ${accounts_page_locators.save_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.save_button}

Click On Cancel Button from System Console Account Page
    Wait Until Element Is Visible    ${accounts_page_locators.cancel_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.cancel_button}
    
Modified Existing Entitlements Quantity
    [Arguments]    ${QUANTITIES}    ${ROWS}
    Wait Until Element Is Visible    ${accounts_page_locators.quantity_entiltlement}    ${LG_TIME}
    FOR     ${INDEX}    IN RANGE   1    ${ROWS}+1
        ${PATH} =    list_xpath.Get Locator Xpath For Quantities    ${INDEX}
        Run Keyword and Ignore Error    Input Text    xpath=${PATH}    ${QUANTITIES}
    END
    Sleep    ${SH_TIME}

Add New Entitlements
    ${ONE_ENTITLEMENT} =    list_xpath.Get Locator Xpath For Checkbox Entitlements    1
    Wait Until Element Is Visible    ${ONE_ENTITLEMENT}    ${LG_TIME}
    [Arguments]    ${ROWS}
    FOR     ${INDEX}    IN RANGE   1    ${ROWS}+1
        ${PATH} =    list_xpath.Get Locator Xpath For Checkbox Entitlements    ${INDEX}
        Click Element    xpath=${PATH}
    END
    Sleep    ${SH_TIME}

Click On Yes Confirmation Message
    Wait Until Element Is Visible     ${accounts_page_locators.message_info}    ${LG_TIME}
    Click Element                     ${accounts_page_locators.yes_button}

Click On No Confirmation Message
    Wait Until Element Is Visible     ${accounts_page_locators.message_info}    ${LG_TIME}
    Click Element                     ${accounts_page_locators.no_button}

Click On Ok Confirmation Message
    Wait Until Element Is Visible     ${accounts_page_locators.message_success}    ${LG_TIME}
    Click Element                     ${accounts_page_locators.ok_button}

Click On Return Arrow
    Wait Until Element Is Visible     ${accounts_page_locators.arrow_back}    ${LG_TIME}
    Click Element                     ${accounts_page_locators.arrow_back}

Verify That The Changes Are Correct In Quantities
    [Arguments]    ${QUANTITIES}    ${ROWS}    ${START_ROW}
    Wait Until Element Is Visible    ${accounts_page_locators.quantity_entiltlement}    ${LG_TIME}
    FOR     ${INDEX}    IN RANGE   ${START_ROW}    ${ROWS}+${START_ROW}
        ${PATH} =    list_xpath.Get Locator Xpath For Quantities    ${INDEX}
        ${EVALUATION} =    Run Keyword And Return Status     ${VALUE} =    Get Value    ${PATH}
        Run Keyword If    ${EVALUATION}    Should Be Equal As Integers    ${VALUE}    ${QUANTITIES}
    END
    Sleep    ${SH_TIME}

Verify That The Change Is Correct In Existing Entitlements
    [Arguments]    ${ENTITLMENT_NAME}
    Wait Until Element Is Visible    ${accounts_page_locators.name_entitlement_id}    ${LG_TIME}
    Element Text Should Be           ${accounts_page_locators.name_entitlement_id}    ${ENTITLMENT_NAME}

If It Return To The Menu
    [Arguments]    ${ACCOUNT}
    Run Keyword And Ignore Error   Run Keywords   
    ...    Load The System Console Account Page    AND
    ...    Search An Account from System Console Account Page    ${ACCOUNT}    ${ENVIRONMENT}    AND
    ...    Click On Account Name from System Console Account Page    ${ACCOUNT}    ${ENVIRONMENT}

Click On Add New Account
    Wait Until Element Is Visible    ${accounts_page_locators.add_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.add_button}

Fill In The Information To Create A New Account
    Wait Until Element Is Visible    ${accounts_page_locators.account_details_title}    ${LG_TIME}
    ${ACCOUNT_NAME} =    Collections.Get From Dictionary    ${NEW}    ${ENVIRONMENT}
    ${DOT_NAME} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    DOT
    ${WEBSITE} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    WEBSITE
    ${ADDRESS1} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    STREET1
    ${CITY} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    CITY
    ${STATE} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    STATE
    ${POSTAL_CODE} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    POSTAL
    ${PHONE_NUMBER_LEGAL} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    PHONE_NUMBER_LEGAL
    ${FIRST_NAME} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    FIRST_NAME
    ${LAST_NAME} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    LAST_NAME
    ${PHONE_NUMBER_PRIMARY} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    PHONE_NUMBER_PRIMARY
    ${EMAIL} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    EMAIL
    Input Text    ${accounts_page_locators.account_name}              ${ACCOUNT_NAME}
    Input Text    ${accounts_page_locators.dot_number}                ${DOT_NAME}
    Input Text    ${accounts_page_locators.website}                   ${WEBSITE}
    Input Text    ${accounts_page_locators.address_1}                 ${ADDRESS1}
    Input Text    ${accounts_page_locators.city}                      ${CITY}
    Input Text    ${accounts_page_locators.state}                     ${STATE}
    Click Element    ${accounts_page_locators.country}
    Click Element    ${accounts_page_locators.country_selected}
    Input Text    ${accounts_page_locators.postal_code}               ${POSTAL_CODE}
    Input Text    ${accounts_page_locators.phone_number_legal}        ${PHONE_NUMBER_LEGAL}
    Input Text    ${accounts_page_locators.first_name}                ${FIRST_NAME}
    Input Text    ${accounts_page_locators.last_name}                 ${LAST_NAME}
    Input Text    ${accounts_page_locators.phone_number_primary}      ${PHONE_NUMBER_PRIMARY}
    Input Text    ${accounts_page_locators.email}                     ${EMAIL}
    Click Element    ${accounts_page_locators.save_button}

Click On Yes Confirmation Message For The Creation of New Account
    Wait Until Element Is Visible     ${accounts_page_locators.information_message}    ${LG_TIME}
    Click Element                     ${accounts_page_locators.yes_button}

Click On No Confirmation Message For The Creation of New Account
    Wait Until Element Is Visible     ${accounts_page_locators.information_message}    ${LG_TIME}
    Click Element                     ${accounts_page_locators.no_button}

Click On Ok Confirmation Message For The Creation of New Account
    Wait Until Element Is Visible     ${accounts_page_locators.confirmation_message}    90S
    Click Element                     ${accounts_page_locators.ok_button}

Obtain The New Business Account ID
    Wait Until Element Is Visible     ${accounts_page_locators.business_account_id}    ${LG_TIME}
    ${BA} =    Get Value              ${accounts_page_locators.business_account_id}
    Log    ${BA}

Add New Entitlements In A New Accout from System Console Account Page
    [Documentation]    Three new entitlements are added, one of which
    ...    requires going through the Completed tab, this three are:
    ...    OT1-EP-AMGC, OT1-GM and OT1-CER
    ${ONE_ENTITLEMENT} =    list_xpath.Get Locator Xpath For Checkbox Entitlements    1
    Wait Until Element Is Visible    ${ONE_ENTITLEMENT}    ${LG_TIME}
    Click Element    ${accounts_page_locators._OT1_EP_AMGC}
    Click Element    ${accounts_page_locators._OT1_GM}
    Click Element    ${accounts_page_locators._OT1_CER}
    # Click Element    ${accounts_page_locators._OT1_TM}
    Sleep    ${SH_TIME}

Add New Entitlements In An Existing Accout from System Console Account Page
    [Arguments]    ${ENTITLMENT_NAME}
    [Documentation]    One new entitlements are added, one of which
    ...    requires going through the Completed tab, this one is:
    ...    r, aa
    ${ONE_ENTITLEMENT} =    list_xpath.Get Locator Xpath For Checkbox Entitlements    1
    Wait Until Element Is Visible    ${ONE_ENTITLEMENT}    ${LG_TIME}
    ${XPATH} =    list_xpath.Get Locator Xpath For Entitlements    ${ENTITLMENT_NAME}
    Click Element    ${XPATH}
    Sleep    ${SH_TIME}

Verify That An Error Message Should Appear
    Wait Until Element Is Visible    ${accounts_page_locators.error_message}    ${LG_TIME}

Verify That The OT1-HOS Entitlement From Manual Transaction Exist
    Wait Until Element Is Visible    ${accounts_page_locators.OT1_HOS}    ${LG_TIME}

Veify That The Form To Add A New Account Loaded Correctly
    Wait Until Element Is Visible    ${accounts_page_locators.account_details_title}    ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.account_name}             ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.dot_number}               ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.website}                  ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.address_1}                ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.city}                     ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.state}                    ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.country}                  ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.postal_code}              ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.phone_number_legal}       ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.first_name}               ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.last_name}                ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.phone_number_primary}     ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.email}                    ${LG_TIME}

Veify That The Form To Edit A Business Account Loaded Correctly
    IF    '${ENVIRONMENT}'=='DEPRECATED'
        Wait Until Element Is Visible    ${accounts_page_locators.business_account_id}    ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.last_txn_num}           ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.last_txn_date}          ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.legal_name}             ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.fleet_size}             ${LG_TIME}
    ELSE
        Wait Until Element Is Visible    ${accounts_page_locators.general_tab_ui}            ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.account_title_ui}          ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.business_account_id_ui}    ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.company_name_ui}           ${LG_TIME}
    END

Click On Arrow Back From A Business Account Details
    Wait Until Element Is Visible    ${accounts_page_locators.arrow_back}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.arrow_back}

Verify Save And Cancel Buttons Are Visible
    Wait Until Element Is Visible    ${accounts_page_locators.save_button}      ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.cancel_button}    ${LG_TIME}

Verify Save And Reset Buttons Are Visible
    Run Keyword And Ignore Error    Scroll Element Into View         ${accounts_page_locators.save_button}
    Wait Until Element Is Visible    ${accounts_page_locators.save_button}      ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.reset_button}     ${LG_TIME}

Validate That The Alternate Accounts Count Is Displayed
    [Arguments]    ${ACCOUNT} 
    ${XPATH} =    list_xpath.Obtain Xpath Business Account Count Alternate Accounts    ${ACCOUNT}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}

Verify That The Three Tabs Are Visible
    Wait Until Element Is Visible    ${accounts_page_locators.general_tab_ui}         ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.alternate_tab_ui}       ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.entitlements_tab_ui}    ${LG_TIME}

Click On General Tab
    Wait Until Element Is Visible    ${accounts_page_locators.general_tab_ui}         ${LG_TIME}
    Click Element                    ${accounts_page_locators.general_tab_ui}

Click On Alternate Accounts Tab
    Wait Until Element Is Visible    ${accounts_page_locators.alternate_tab_ui}         ${LG_TIME}
    Click Element                    ${accounts_page_locators.alternate_tab_ui}
    Wait Until Element Is Visible    ${accounts_page_locators.add_alternate_button}     ${LG_TIME}

Click On Entitlements Tab
    Wait Until Element Is Visible    ${accounts_page_locators.entitlements_tab_ui}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.entitlements_tab_ui}
    Wait Until Element Is Visible    ${accounts_page_locators.search_bar_entitlements_ui}    ${LG_TIME}

Search An Entitlement from A Business Account
    [Arguments]    ${entitlement}
    ${XPATH} =     list_xpath.Obtain Xpath Entitlement Row    ${entitlement}
    Wait Until Element Is Visible    ${accounts_page_locators.search_bar_entitlements_ui}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.search_bar_entitlements_ui}    ${entitlement}
    Press Keys                       ${accounts_page_locators.search_bar_entitlements_ui}    ENTER
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    
Click On Plus Button From A Entitlement
    [Arguments]    ${entitlement}
    ${XPATH} =     list_xpath.Obtain Xpath Entitlement Plus Button    ${entitlement}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}

Expand Entitlement
    [Arguments]    ${entitlement}
    ${XPATH} =     list_xpath.Obtain Xpath Entitlement Expand      ${entitlement}
    Wait Until Element Is Visible    ${XPATH}                      ${LG_TIME}
    Click Element                    ${XPATH}
    ${XPATH} =     list_xpath.Obtain Xpath Entitlement Collapse    ${entitlement}
    Wait Until Element Is Visible    ${XPATH}                      ${LG_TIME}

Account Information From General Tab
    Wait Until Element Is Visible    ${accounts_page_locators.account_title_ui}          ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.business_account_id_ui}    ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.company_name_ui}           ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.address_ui_label}          ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.phone_ui_label}            ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.contact_inf_ui_label}      ${LG_TIME}

Click On Add Alternate Account
    Wait Until Element Is Visible    ${accounts_page_locators.add_alternate_button}     ${LG_TIME}
    Click Element                    ${accounts_page_locators.add_alternate_button}
    Wait Until Element Is Visible    ${accounts_page_locators.map_alt_account_title}    ${LG_TIME}

Add And Cancel Button Are Visible
    Wait Until Element Is Visible    ${accounts_page_locators.cancel_button_map_alt_acc}    ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.add_button_map_alt_acc}       ${LG_TIME}

Click On Add Button
    Wait Until Element Is Visible    ${accounts_page_locators.add_button_map_alt_acc}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.add_button_map_alt_acc}

Add Button Is Disabled
    Wait Until Element Is Visible    ${accounts_page_locators.add_but_map_alt_acc_dis}    ${LG_TIME}

Click On Cancel Button
    Wait Until Element Is Visible    ${accounts_page_locators.cancel_button_map_alt_acc}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.cancel_button_map_alt_acc}

Click On Close Button
    Wait Until Element Is Visible    ${accounts_page_locators.map_alt_account_close}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.map_alt_account_close}
    Sleep    ${UL_TIME}

Click On Edit Button From General View Tab
    Sleep                            ${UL_TIME}
    IF    '${ENVIRONMENT}'=='DEPRECATED'
        Wait Until Element Is Visible    ${accounts_page_locators.edit_button_ui}             ${LG_TIME}
        Click Element                    ${accounts_page_locators.edit_button_ui}
        Wait Until Element Is Visible    ${accounts_page_locators.save_button_ui}             ${LG_TIME}
    ELSE
        Wait Until Element Is Visible    ${accounts_page_locators.pencil_button_ui}           ${LG_TIME}
        Click Element                    ${accounts_page_locators.pencil_button_ui}
        Wait Until Element Is Visible    ${accounts_page_locators.edit_company_name_title}    ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.company_name_input}         ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.business_account_input}     ${LG_TIME}
    END

Click On Save Button From General View Tab
    Wait Until Element Is Visible    ${accounts_page_locators.save_button_ui}     ${LG_TIME}
    Click Element                    ${accounts_page_locators.save_button_ui}

Click On OK Button From Success Compnay Name Message
    Wait Until Element Is Visible    ${accounts_page_locators.success_company_name}      ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.ok_button_name_company}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.ok_button_name_company}

Modify Company Name
    [Arguments]    ${company_name}
    IF    '${ENVIRONMENT}'=='DEPRECATED'
        Wait Until Element Is Visible    ${accounts_page_locators.company_name_ui}       ${LG_TIME}
        Clear Element Text               ${accounts_page_locators.company_name_ui}
        Input Text                       ${accounts_page_locators.company_name_ui}       ${company_name}
    ELSE
        Wait Until Element Is Visible    ${accounts_page_locators.company_name_input}    ${LG_TIME}
        Clear Element Text               ${accounts_page_locators.company_name_input}
        Input Text                       ${accounts_page_locators.company_name_input}    ${company_name}
    END

Click On Add New Address Button
    Wait Until Element Is Visible    ${accounts_page_locators.add_address_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.add_address_button}
    Wait Until Element Is Visible    ${accounts_page_locators.address_title}         ${LG_TIME}

Click On Edit Button To An Existing Address
    Sleep                            ${UL_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_address_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.edit_address_button}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_address_title}     ${LG_TIME}

Select Address Type
    [Arguments]    ${address_type}
    Wait Until Element Is Visible    ${accounts_page_locators.address_type_select}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.address_type_select}
    ${XPATH} =    list_xpath.Obtain Xpath Select Option    ${address_type}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Sleep    ${UL_TIME}

Fill Street Address One
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${accounts_page_locators.street_address_1_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.street_address_1_input}    ${street}

Fill Street Address Two
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${accounts_page_locators.street_address_2_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.street_address_2_input}    ${street}

Select Country
    [Arguments]    ${country}
    Wait Until Element Is Visible    ${accounts_page_locators.country_select}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.country_select}
    ${XPATH} =    list_xpath.Obtain Xpath Select Option    ${country}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Sleep    ${UL_TIME}

Select Province/State
    [Arguments]    ${state}
    Wait Until Element Is Visible    ${accounts_page_locators.province_select}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.province_select}
    ${XPATH} =    list_xpath.Obtain Xpath Select Option    ${state}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Scroll Element Into View         ${accounts_page_locators.province_select}
    Click Element                    ${XPATH}
    Sleep    ${UL_TIME}

Fill City
    [Arguments]    ${city}
    Wait Until Element Is Visible    ${accounts_page_locators.city_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.city_input}    ${city}

Fill Postal Code
    [Arguments]    ${postal_code}
    Wait Until Element Is Visible    ${accounts_page_locators.postal_code_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.postal_code_input}    ${postal_code}

Edit Select Address Type
    [Arguments]    ${address_type}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_address_type_select}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.edit_address_type_select}
    Sleep    ${UL_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Select Option    ${address_type}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Sleep    ${UL_TIME}

Edit Street Address One
    [Arguments]    ${street}
    Clear Element Text               ${accounts_page_locators.edit_street_address_1_in}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_street_address_1_in}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_street_address_1_in}    ${street}

Edit Street Address Two
    [Arguments]    ${street}
    Clear Element Text               ${accounts_page_locators.edit_street_address_2_in}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_street_address_2_in}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_street_address_2_in}    ${street}

Edit Select Country
    [Arguments]    ${country}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_country_select}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.edit_country_select}
    Sleep    ${UL_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Select Option    ${country}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Sleep    ${UL_TIME}

Edit Select Province/State
    [Arguments]    ${state}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_province_select}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.edit_province_select}
    Sleep    ${UL_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Select Option    ${state}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Scroll Element Into View         ${accounts_page_locators.edit_province_select}
    Click Element                    ${XPATH}
    Sleep    ${UL_TIME}

Edit City
    [Arguments]    ${city}
    Clear Element Text               ${accounts_page_locators.edit_city_input}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_city_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_city_input}    ${city}

Edit Postal Code
    [Arguments]    ${postal_code}
    Clear Element Text               ${accounts_page_locators.edit_postal_code_input}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_postal_code_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_postal_code_input}    ${postal_code}

Click On Add New Phone Number
    Wait Until Element Is Visible    ${accounts_page_locators.add_phone_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.add_phone_button}
    Wait Until Element Is Visible    ${accounts_page_locators.phone_title}         ${LG_TIME}

Click On Edit Button To An Existing Phone Number
    Sleep                            ${UL_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_phone_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.edit_phone_button}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_phone_title}     ${LG_TIME}

Select Phone Type
    [Arguments]    ${phone_type}
    Wait Until Element Is Visible    ${accounts_page_locators.phone_type_select}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.phone_type_select}
    ${XPATH} =    list_xpath.Obtain Xpath Select Option    ${phone_type}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Sleep    ${UL_TIME}

Fill Phone Number
    [Arguments]    ${phone_number}
    Wait Until Element Is Visible    ${accounts_page_locators.phone_number_input}    ${LG_TIME}
    Clear Element Text               ${accounts_page_locators.phone_number_input}
    Input Text                       ${accounts_page_locators.phone_number_input}    ${phone_number}

Edit Select Phone Type
    [Arguments]    ${phone_type}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_phone_type_select}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.edit_phone_type_select}
    ${XPATH} =    list_xpath.Obtain Xpath Select Option    ${phone_type}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Sleep    ${UL_TIME}

Edit Phone Number
    [Arguments]    ${phone_number}
    Clear Element Text               ${accounts_page_locators.edit_phone_number_input}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_phone_number_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_phone_number_input}    ${phone_number}

Click On Add New Contact Information
    Wait Until Element Is Visible    ${accounts_page_locators.add_contact_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.add_contact_button}
    Wait Until Element Is Visible    ${accounts_page_locators.contact_title}         ${LG_TIME}

Click On Edit Button To An Existing Contact Information
    [Arguments]    ${name}
    Sleep                            ${UL_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Kebab Button Contact Information    ${name}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_contact_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.edit_contact_button}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_contact_title}     ${LG_TIME}

Fill Full Name
    [Arguments]    ${full_name}
    Wait Until Element Is Visible    ${accounts_page_locators.full_name_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.full_name_input}    ${full_name}

Fill Primary Contact
    [Arguments]    ${primary_contact}
    Wait Until Element Is Visible    ${accounts_page_locators.primary_contact_input}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.primary_contact_input}
    ${XPATH} =    list_xpath.Obtain Xpath Primary Contact    ${primary_contact}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}

Fill Job Title
    [Arguments]    ${job_title}
    Wait Until Element Is Visible    ${accounts_page_locators.job_title_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.job_title_input}    ${job_title}

Fill Email Address
    [Arguments]    ${email}
    Wait Until Element Is Visible    ${accounts_page_locators.email_address_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.email_address_input}    ${email}

Fill Mobile Number
    [Arguments]    ${number}
    Wait Until Element Is Visible    ${accounts_page_locators.mobile_number_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.mobile_number_input}    ${number}

Fill Phone Number from Contact Information
    [Arguments]    ${number}
    Wait Until Element Is Visible    ${accounts_page_locators.pho_number_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.pho_number_input}    ${number}

Edit Full Name
    [Arguments]    ${full_name}
    Clear Element Text               ${accounts_page_locators.edit_full_name_input}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_full_name_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_full_name_input}    ${full_name}

Edit Primary Contact
    [Arguments]    ${primary_contact}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_primary_contact_input}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.edit_primary_contact_input}
    ${XPATH} =    list_xpath.Obtain Xpath Primary Contact    ${primary_contact}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}

Edit Job Title
    [Arguments]    ${job_title}
    Clear Element Text               ${accounts_page_locators.edit_job_title_input}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_job_title_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_job_title_input}    ${job_title}

Edit Email Address
    [Arguments]    ${email}
    Clear Element Text               ${accounts_page_locators.edit_email_address_input}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_email_address_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_email_address_input}    ${email}

Edit Mobile Number
    [Arguments]    ${number}
    Clear Element Text               ${accounts_page_locators.edit_mobile_number_input}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_mobile_number_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_mobile_number_input}    ${number}

Edit Phone Number from Contact Information
    [Arguments]    ${number}
    Clear Element Text               ${accounts_page_locators.edit_pho_number_input}
    Wait Until Element Is Visible    ${accounts_page_locators.edit_pho_number_input}    ${LG_TIME}
    Input Text                       ${accounts_page_locators.edit_pho_number_input}    ${number}

Click On Remove Button From Address Option
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.remove_address_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.remove_address_button}

Delete Address Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.delete_address}             ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.delete_address_button}      ${LG_TIME}
    Click Element                    ${accounts_page_locators.delete_address_button}
    Wait Until Element Is Visible    ${accounts_page_locators.address_deleted_message}    ${LG_TIME}

Added Address Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.address_added_message}    ${LG_TIME}

Edited Address Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.address_edited_message}    ${LG_TIME}

Delete Phone Number Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.delete_phone_number}     ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.delete_phone_button}      ${LG_TIME}
    Click Element                    ${accounts_page_locators.delete_phone_button}
    Wait Until Element Is Visible    ${accounts_page_locators.phone_deleted_message}    ${LG_TIME}

Added Phone Number Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.phone_added_message}    ${LG_TIME}

Edited Phone Number Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.phone_edited_message}    ${LG_TIME}

Delete Contact Information Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.delete_contact_information}    ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.delete_contact_button}         ${LG_TIME}
    Click Element                    ${accounts_page_locators.delete_contact_button}
    Wait Until Element Is Visible    ${accounts_page_locators.contact_deleted_message}       ${LG_TIME}

Added Contact Information Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.contact_added_message}    ${LG_TIME}

Edited Contact Information Message Is Displayed
    Wait Until Element Is Visible    ${accounts_page_locators.contact_edited_message}    ${LG_TIME}

Click On OK Button
    Wait Until Element Is Visible    ${accounts_page_locators.ok_button_general}          ${LG_TIME}
    Click Element                    ${accounts_page_locators.ok_button_general}

Click On Remove Button From Phone Number Option
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.remove_phone_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.remove_phone_button}

Click On Remove Button From Contact Information Option
    [Arguments]    ${name}
    Sleep                            ${SH_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Kebab Button Contact Information    ${name}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${accounts_page_locators.remove_contact_button}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.remove_contact_button}

Click On Add Alternate Account Button
    Sleep                            ${UL_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.add_alternate_button}     ${LG_TIME}
    Click Element                    ${accounts_page_locators.add_alternate_button}
    Wait Until Element Is Visible    ${accounts_page_locators.map_alt_account_title}    ${LG_TIME}

Select A Plaform for An Alternate Account
    [Arguments]    ${platform}
    ${XPATH} =    list_xpath.Obtain Xpath Alternate Account Platform    ${platform}
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.platform_select}     ${LG_TIME}
    Click Element                    ${accounts_page_locators.platform_select}
    Wait Until Element Is Visible    ${XPATH}     ${LG_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}

Fill Primary ID
    [Arguments]    ${platform}    ${id}    ${guid}=default value    ${cid}=default value    ${instance_id}=default value
    IF    '${platform}'=='XRS'
        Wait Until Element Is Visible    ${accounts_page_locators.xrs_company_id_input_text}    ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.xrs_company_login_input}      ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.xrs_company_guid_input}       ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.xrs_instance_input_text}      ${LG_TIME}
        Input Text                       ${accounts_page_locators.xrs_company_id_input_text}    ${id}
        Input Text                       ${accounts_page_locators.xrs_company_login_input}      ${cid}
        Input Text                       ${accounts_page_locators.xrs_company_guid_input}       ${guid}
        Input Text                       ${accounts_page_locators.xrs_instance_input_text}      ${instance_id}
    ELSE IF    '${platform}'=='Roadnet'
        Wait Until Element Is Visible    ${accounts_page_locators.rn_buid_input_text}           ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.rn_customer_id_input_text}    ${LG_TIME}
        Wait Until Element Is Visible    ${accounts_page_locators.rn_instance_id_input_text}    ${LG_TIME}
        Input Text                       ${accounts_page_locators.rn_buid_input_text}           ${guid}
        Input Text                       ${accounts_page_locators.rn_customer_id_input_text}    ${cid}
        Input Text                       ${accounts_page_locators.rn_instance_id_input_text}    ${instance_id}
    ELSE
        Wait Until Element Is Visible    ${accounts_page_locators.primary_id_input_text}        ${LG_TIME}
        Input Text                       ${accounts_page_locators.primary_id_input_text}        ${id}
    END

Click On Save Button From Alternate Account Form
    Wait Until Element Is Visible    ${accounts_page_locators.add_button_map_alt_acc}     ${LG_TIME}
    Click Element                    ${accounts_page_locators.add_button_map_alt_acc}

Click On Cancel Button From Alternate Account Form
    Wait Until Element Is Visible    ${accounts_page_locators.cancel_button_map_alt_acc}     ${LG_TIME}
    Click Element                    ${accounts_page_locators.cancel_button_map_alt_acc}

Click On Ok Confirmation From Alternate Account Success Message
    Wait Until Element Is Visible    ${accounts_page_locators.success_message_alternate}    ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.ok_button}                    ${LG_TIME}
    Click Element                    ${accounts_page_locators.ok_button}

Click On Remove From Kebab Button Into Alternate Account Tab
    [Arguments]    ${id}
    ${XPATH} =    list_xpath.Obtain Xpath Kebab Button Alternate Account    ${id}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${accounts_page_locators.remove_alternate_account}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.remove_alternate_account}
    Wait Until Element Is Visible    ${accounts_page_locators.remove_title_alternate}      ${LG_TIME}

Click On Remove Button Into Alternate Account Tab
    [Arguments]    ${id}
    ${XPATH} =    list_xpath.Obtain Xpath Remove Button Alternate Account    ${id}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${accounts_page_locators.remove_title_alternate}      ${LG_TIME}

Click On Remove Button From Remove Alternate Account Pop-Up
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.remove_button_alternate}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.remove_button_alternate}

Validate Warning Message Due To Pending Status
    Wait Until Element Is Visible    ${accounts_page_locators.warning_pending_alternate}    ${LG_TIME}

Click On OK Button From Warning Message
    Wait Until Element Is Visible    ${accounts_page_locators.warning_pending_alternate}    ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.ok_button}                    ${LG_TIME}
    Click Element                    ${accounts_page_locators.ok_button}

Click On Cancel Button From Remove Alternate Account Pop-Up
    Wait Until Element Is Visible    ${accounts_page_locators.cancel_button_alternate}    ${LG_TIME}
    Click Element                    ${accounts_page_locators.cancel_button_alternate}

Click On Ok Button From Remove Alternate Account Success Message
    Wait Until Element Is Visible    ${accounts_page_locators.success_remove_alternate}    ${LG_TIME}
    Wait Until Element Is Visible    ${accounts_page_locators.ok_button}                   ${LG_TIME}
    Click Element                    ${accounts_page_locators.ok_button}

Select A Specific Records Per Page
    [Arguments]    ${number}
    Wait Until Element Is Visible    ${accounts_page_locators.page_listbox}        ${LG_TIME}
    Click Element                    ${accounts_page_locators.page_listbox}
    ${XPATH} =    list_xpath.Obtain Xpath Mat Option Select                        ${number}
    Wait Until Element Is Visible    ${XPATH}                                      ${LG_TIME}
    Click Element                    ${XPATH}
    Sleep                            ${UL_TIME}

Verify That The Pagination Is Correct
    [Arguments]    ${number}
    Wait Until Element Is Visible    ${accounts_page_locators.pagination_title}    ${LG_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Mat Option Number                        ${number}
    Wait Until Element Is Visible    ${XPATH}                                      ${LG_TIME}