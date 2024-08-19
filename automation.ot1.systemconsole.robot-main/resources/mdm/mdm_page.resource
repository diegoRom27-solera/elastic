
Load The System Console MDM Profile Page
    Wait Until Element Is Visible    ${mdm_page_locators.title}                 ${LG_TIME}

Navigate To The System Console MDM Profile Page
    Click Element                    dom:${mdm_page_locators.mdm_tab}
    Wait Until Element Is Visible    dom:${mdm_page_locators.mdm_iframe}        ${LG_TIME}

Select Main Iframe from System Console MDM Profile Page
    Wait Until Element Is Visible    dom:${mdm_page_locators.mdm_iframe}        ${LG_TIME}
    Select Frame                     dom:${mdm_page_locators.mdm_iframe}
    Wait Until Element Is Visible    ${mdm_page_locators.title}                 ${LG_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}                              ${LG_TIME}

Unselect Main Iframe from System Console MDM Profile Page
    Unselect Frame

Click On New Button
    Wait Until Element Is Visible    ${mdm_page_locators.new_button}            ${LG_TIME}
    Click Element                    ${mdm_page_locators.new_button}

Click On Regular MDM Tab
    Wait Until Element Is Visible    ${mdm_page_locators.regular_mdm_tab}       ${LG_TIME}
    Click Element                    ${mdm_page_locators.regular_mdm_tab}
    Wait Until Element Is Visible    ${mdm_page_locators.regular_row}           ${LG_TIME}

Click On Beta MDM Tab
    Wait Until Element Is Visible    ${mdm_page_locators.beta_mdm_tab}          ${LG_TIME}
    Click Element                    ${mdm_page_locators.beta_mdm_tab}
    Wait Until Element Is Visible    ${mdm_page_locators.beta_row}              ${LG_TIME}

Click On Edit Button From MDM Profile
    [Arguments]    ${mdm}
    ${XPATH} =    list_xpath.Obtain Xpath Mdm Edit Button    ${mdm}
    Wait Until Element Is Visible    ${XPATH}                                   ${LG_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${mdm_page_locators.update_title}          ${LG_TIME}

Search A MDM Profile With The Search Bar
    [Arguments]    ${profile_guid}
    Sleep    ${UL_TIME}
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${mdm_page_locators.search_text}           ${LG_TIME}
    Clear Element Text               ${mdm_page_locators.search_text}
    Input Text                       ${mdm_page_locators.search_text}           ${profile_guid}
    Press Keys                       ${mdm_page_locators.search_text}           ENTER
    ${XPATH} =    list_xpath.Obtain Xpath Mdm Edit Button                       ${profile_guid}
    Wait Until Element Is Visible    ${XPATH}                                   ${LG_TIME}

Remove Text In Search Bar
    Wait Until Element Is Visible    ${mdm_page_locators.search_text}           ${LG_TIME}
    Clear Element Text               ${mdm_page_locators.search_text}
    Press Keys                       ${mdm_page_locators.search_text}           ENTER

Checkbox On Application Values
    [Arguments]    @{apps}
    Wait Until Element Is Visible    ${mdm_page_locators.app_title}             ${LG_TIME}
    FOR    ${element}    IN    @{apps}
        ${XPATH} =    list_xpath.Obtain Xpath Checkbox Applications Mdm         ${element}
        Wait Until Element Is Visible    ${XPATH}                               ${LG_TIME}
        Scroll Element Into View         ${XPATH}
        Click Element                    ${XPATH}
    END

Click On Cancel Button
    Wait Until Element Is Visible    ${mdm_page_locators.cancel_button}         ${LG_TIME}
    Click Element                    ${mdm_page_locators.cancel_button}

Click On Close Button
    Wait Until Element Is Visible    ${mdm_page_locators.close_button}          ${LG_TIME}
    Scroll Element Into View         ${mdm_page_locators.close_button}
    Click Element                    ${mdm_page_locators.close_button}

Click On Save Button
    Wait Until Element Is Visible    ${mdm_page_locators.save_button}           ${LG_TIME}
    Click Element                    ${mdm_page_locators.save_button}

Click On Delete Button
    Wait Until Element Is Visible    ${mdm_page_locators.detele_button}         ${LG_TIME}
    Scroll Element Into View         ${mdm_page_locators.detele_button}
    Click Element                    ${mdm_page_locators.detele_button}

Select A Profile Type
    [Arguments]    ${profile_type}
    Wait Until Element Is Visible    ${mdm_page_locators.profile_type_select}    ${LG_TIME}
    Click Element                    ${mdm_page_locators.profile_type_select}
    ${XPATH} =    list_xpath.Obtain Xpath Mat Option Select                     ${profile_type}
    Wait Until Element Is Visible    ${XPATH}                                   ${LG_TIME}
    Click Element                    ${XPATH}

Select A Status
    [Arguments]    ${status}
    Wait Until Element Is Visible    ${mdm_page_locators.status_select}         ${LG_TIME}
    Click Element                    ${mdm_page_locators.status_select}
    ${XPATH} =    list_xpath.Obtain Xpath Mat Option Select                     ${status}
    Wait Until Element Is Visible    ${XPATH}                                   ${LG_TIME}
    Click Element                    ${XPATH}

Select A Platform
    [Arguments]    ${platform}
    Wait Until Element Is Visible    ${mdm_page_locators.platform_select}       ${LG_TIME}
    Click Element                    ${mdm_page_locators.platform_select}
    ${XPATH} =    list_xpath.Obtain Xpath Mat Option Select                     ${platform}
    Wait Until Element Is Visible    ${XPATH}                                   ${LG_TIME}
    Click Element                    ${XPATH}

Fill In Profile Name Field
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${mdm_page_locators.profile_name_input}    ${LG_TIME}
    Input Text                       ${mdm_page_locators.profile_name_input}    ${name}

Edit Profile Name Field
    [Arguments]    ${name}
    Sleep    ${UL_TIME}
    Clear Element Text               ${mdm_page_locators.profile_name_input}
    Wait Until Element Is Visible    ${mdm_page_locators.profile_name_input}    ${LG_TIME}
    Input Text                       ${mdm_page_locators.profile_name_input}    ${name}

Fill In Description Field
    [Arguments]    ${description}
    Wait Until Element Is Visible    ${mdm_page_locators.description_input}     ${LG_TIME}
    Input Text                       ${mdm_page_locators.description_input}     ${description}

Edit Description Field
    [Arguments]    ${description}
    Clear Element Text               ${mdm_page_locators.description_input}
    Sleep                            ${UL_TIME}
    Wait Until Element Is Visible    ${mdm_page_locators.description_input}     ${LG_TIME}
    Input Text                       ${mdm_page_locators.description_input}     ${description}

Click On OK Button
    Wait Until Element Is Visible    ${mdm_page_locators.ok_button}             ${LG_TIME}
    Click Element                    ${mdm_page_locators.ok_button}
    Sleep    ${UL_TIME}

MDM Created Success Message Is Display
    Wait Until Element Is Visible    ${mdm_page_locators.message_success}       ${LG_TIME}

MDM Deleted Success Message Is Display
    Wait Until Element Is Visible    ${mdm_page_locators.delete_success}        ${LG_TIME}

MDM Updated Success Message Is Display
    Wait Until Element Is Visible    ${mdm_page_locators.updated_success}       ${LG_TIME}

Select A Specific Records Per Page
    [Arguments]    ${number}
    Wait Until Element Is Visible    ${mdm_page_locators.page_listbox}          ${LG_TIME}
    Click Element                    ${mdm_page_locators.page_listbox}
    ${XPATH} =    list_xpath.Obtain Xpath Mat Option Select                     ${number}
    Wait Until Element Is Visible    ${XPATH}                                   ${LG_TIME}
    Click Element                    ${XPATH}

Verify That The Pagination Is Correct
    [Arguments]    ${number}
    Wait Until Element Is Visible    ${mdm_page_locators.pagination_title}      ${LG_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Mat Option Number                     ${number}
    Wait Until Element Is Visible    ${XPATH}                                   ${LG_TIME}

Verify That Profile Type Is Disabled
    Wait Until Element Is Visible    ${mdm_page_locators.profile_type_disabled}    ${LG_TIME}

Verify That Platfrom Is Disabled
    Wait Until Element Is Visible    ${mdm_page_locators.platform_disabled}     ${LG_TIME}

Verify That Save Button Is Disabled
    Wait Until Element Is Visible    ${mdm_page_locators.save_button_disabled}     ${LG_TIME}

Verify That Save Button Is Enabled
    Wait Until Element Is Visible        ${mdm_page_locators.save_button}              ${LG_TIME}
    Wait Until Element Is Not Visible    ${mdm_page_locators.save_button_disabled}     ${LG_TIME}

Click On Confirmation Delete Button
    Wait Until Element Is Visible        ${mdm_page_locators.confirm_delete_messag}    ${LG_TIME}
    Wait Until Element Is Visible        ${mdm_page_locators.confirm_delete_button}    ${LG_TIME}
    Click Element                        ${mdm_page_locators.confirm_delete_button}

Verify The Confirmation Modal From Delete Button
    Wait Until Element Is Visible        ${mdm_page_locators.confirm_delete_messag}    ${LG_TIME}
    Wait Until Element Is Visible        ${mdm_page_locators.confirm_delete_button}    ${LG_TIME}

Click On Cancel From Confirmation Modal
    Wait Until Element Is Visible        ${mdm_page_locators.cancel_delete_button}     ${LG_TIME}
    Click Element                        ${mdm_page_locators.cancel_delete_button}