
Load The Device Manager Devices Page
    Wait Until Element Is Visible    ${devices_page_locators.title_devices}    ${TIME}

Switch Company
    [Arguments]    ${companyName}
    Wait Until Element Is Visible    ${devices_page_locators.account_button}         ${TIME}
    Click Element                    ${devices_page_locators.account_button}
    Wait Until Element Is Visible    ${devices_page_locators.search_bar_customer}    ${TIME}
    Input Text                       ${devices_page_locators.search_bar_customer}    ${companyName}
    Press Keys                       ${devices_page_locators.search_bar_customer}    ENTER
    ${XPATH} =    list_xpath.Obtain Xpath For Customer Account                       ${companyName}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}
    Sleep    ${SH_TIME}

Search An Platform from Search Bar
    [Arguments]    ${platform}
    Wait Until Element Is Visible    ${devices_page_locators.search_bar}    ${TIME}
    Click Element                    ${devices_page_locators.search_bar}
    ${XPATH} =    list_xpath.Obtain Xpath For Select A Platform             ${platform}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}
    Sleep    ${SH_TIME}

Search An DeviceID from Search Bar
    [Arguments]    ${deviceId}
    Wait Until Element Is Visible    ${devices_page_locators.search_bar}    ${TIME}
    Input Text                       ${devices_page_locators.search_bar}    ${deviceId}
    Press Keys                       ${devices_page_locators.search_bar}    ENTER
    IF    '${BROWSER}'=='ff'
        Sleep    ${MI_TIME}
        Mouse Over    ${devices_page_locators.account_button} 
    END

Select An DeviceID
    [Arguments]    ${deviceId}
    ${XPATH} =    list_xpath.Obtain Xpath Click First Device    ${deviceId}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Click On The First Device
    [Arguments]    ${platform}
    ${XPATH} =    list_xpath.Obtain Xpath Click First Device    ${platform}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Validate The First Device
    [Arguments]    ${platform}
    ${XPATH} =    list_xpath.Obtain Xpath Click First Device    ${platform}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

Swith To Apps Tab
    Wait Until Element Is Visible    ${devices_page_locators.apps_tab}    ${TIME}
    Click Element                    ${devices_page_locators.apps_tab}

Swith To Tools Tab
    Wait Until Element Is Visible    ${devices_page_locators.tools_tab}    ${TIME}
    Click Element                    ${devices_page_locators.tools_tab}

Swith To Info Tab
    Wait Until Element Is Visible    ${devices_page_locators.info_tab}    ${TIME}
    Click Element                    ${devices_page_locators.info_tab}

Search Appcat
    [Arguments]    ${appcatName}
    Wait Until Element Is Visible    ${devices_page_locators.search_appcat}    ${TIME}
    Clear Element Text               ${devices_page_locators.search_appcat}
    Input Text                       ${devices_page_locators.search_appcat}    ${appcatName}
    ${XPATH} =    list_xpath.Obtain Xpath Click Appcat    ${appcatName}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Click On Arrow Back from Device Details
    Wait Until Element Is Visible    ${devices_page_locators.arrow_back_button}    ${TIME}
    Click Element                    ${devices_page_locators.arrow_back_button}
    Sleep    ${SH_TIME}

Override to Appcat
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.appcat_text}        ${TIME}
    Mouse Over                       ${devices_page_locators.appcat_text}
    Wait Until Element Is Visible    ${devices_page_locators.setting_button}     ${TIME}
    Click Element                    ${devices_page_locators.setting_button}
    ${INHERIT} =    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${devices_page_locators.inherit_value_button}    ${UL_TIME}
    IF    '${INHERIT}[0]'=='PASS'
        Click Element                    ${devices_page_locators.inherit_value_button}
        Wait Until Element Is Visible    ${devices_page_locators.inherit_message}    ${TIME}
        Wait Until Element Is Visible    ${devices_page_locators.ok_button}          ${TIME}
        Click Element                    ${devices_page_locators.ok_button}
        Wait Until Element Is Visible    ${devices_page_locators.appcat_text}        ${TIME}
        Mouse Over                       ${devices_page_locators.appcat_text}
        Wait Until Element Is Visible    ${devices_page_locators.setting_button}     ${TIME}
        Click Element                    ${devices_page_locators.setting_button}
    END
    Wait Until Element Is Visible    ${devices_page_locators.override_button}    ${TIME}
    Click Element                    ${devices_page_locators.override_button}
    Wait Until Element Is Visible    ${devices_page_locators.edit_option}        ${TIME}
    Clear Element Text               ${devices_page_locators.edit_option}
    Input Text                       ${devices_page_locators.edit_option}        ${value}
    Wait Until Element Is Visible    ${devices_page_locators.send_button}        ${TIME}
    Click Element                    ${devices_page_locators.send_button}

Edit to Appcat
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.appcat_text}       ${TIME}
    Mouse Over                       ${devices_page_locators.appcat_text}
    Wait Until Element Is Visible    ${devices_page_locators.setting_button}    ${TIME}
    Click Element                    ${devices_page_locators.setting_button}
    Wait Until Element Is Visible    ${devices_page_locators.edit_button}       ${TIME}
    Click Element                    ${devices_page_locators.edit_button}
    Wait Until Element Is Visible    ${devices_page_locators.edit_option}       ${TIME}
    Clear Element Text               ${devices_page_locators.edit_option}
    Input Text                       ${devices_page_locators.edit_option}       ${value}
    Wait Until Element Is Visible    ${devices_page_locators.send_button}       ${TIME}
    Click Element                    ${devices_page_locators.send_button}

Edit to Appcat and Cancel
    Sleep    ${MI_TIME}
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.appcat_text}       ${TIME}
    Mouse Over                       ${devices_page_locators.appcat_text}
    Wait Until Element Is Visible    ${devices_page_locators.setting_button}    ${TIME}
    Click Element                    ${devices_page_locators.setting_button}
    Wait Until Element Is Visible    ${devices_page_locators.edit_button}       ${TIME}
    Click Element                    ${devices_page_locators.edit_button}
    Wait Until Element Is Visible    ${devices_page_locators.edit_option}       ${TIME}
    Clear Element Text               ${devices_page_locators.edit_option}
    Input Text                       ${devices_page_locators.edit_option}       ${value}
    Wait Until Element Is Visible    ${devices_page_locators.clear_button}      ${TIME}
    Click Element                    ${devices_page_locators.clear_button}

Inherit Value to Appcat
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.appcat_text}             ${TIME}
    Mouse Over                       ${devices_page_locators.appcat_text}
    Wait Until Element Is Visible    ${devices_page_locators.setting_button}          ${TIME}
    Click Element                    ${devices_page_locators.setting_button}
    Wait Until Element Is Visible    ${devices_page_locators.inherit_value_button}    ${TIME}
    Click Element                    ${devices_page_locators.inherit_value_button}

Override to Appcat about Phone
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.appcat_text_phone}        ${TIME}
    Mouse Over                       ${devices_page_locators.appcat_text_phone}
    Wait Until Element Is Visible    ${devices_page_locators.setting_button}     ${TIME}
    Click Element                    ${devices_page_locators.setting_button}
    Wait Until Element Is Visible    ${devices_page_locators.override_button}    ${TIME}
    Click Element                    ${devices_page_locators.override_button}
    Wait Until Element Is Visible    ${devices_page_locators.edit_option_phone}        ${TIME}
    Clear Element Text               ${devices_page_locators.edit_option_phone}
    Input Text                       ${devices_page_locators.edit_option_phone}        ${value}
    Wait Until Element Is Visible    ${devices_page_locators.send_button}        ${TIME}
    Click Element                    ${devices_page_locators.send_button}

Edit to Appcat about Phone
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.appcat_text_phone}       ${TIME}
    Mouse Over                       ${devices_page_locators.appcat_text_phone}
    Wait Until Element Is Visible    ${devices_page_locators.setting_button}    ${TIME}
    Click Element                    ${devices_page_locators.setting_button}
    Wait Until Element Is Visible    ${devices_page_locators.edit_button}       ${TIME}
    Click Element                    ${devices_page_locators.edit_button}
    Wait Until Element Is Visible    ${devices_page_locators.edit_option_phone}       ${TIME}
    Clear Element Text               ${devices_page_locators.edit_option_phone}
    Input Text                       ${devices_page_locators.edit_option_phone}       ${value}
    Wait Until Element Is Visible    ${devices_page_locators.send_button}       ${TIME}
    Click Element                    ${devices_page_locators.send_button}

Inherit Value to Appcat about Phone
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.appcat_text_phone}             ${TIME}
    Mouse Over                       ${devices_page_locators.appcat_text_phone}
    Wait Until Element Is Visible    ${devices_page_locators.setting_button}          ${TIME}
    Click Element                    ${devices_page_locators.setting_button}
    Wait Until Element Is Visible    ${devices_page_locators.inherit_value_button}    ${TIME}
    Click Element                    ${devices_page_locators.inherit_value_button}

Verify Success Message
    Wait Until Element Is Visible    ${devices_page_locators.success_message}    ${TIME}
    Wait Until Element Is Visible    ${devices_page_locators.ok_button}          ${TIME}
    Click Element                    ${devices_page_locators.ok_button}

Verify Success Inherited Message
    Wait Until Element Is Visible    ${devices_page_locators.inherit_message}    ${TIME}
    Wait Until Element Is Visible    ${devices_page_locators.ok_button}          ${TIME}
    Click Element                    ${devices_page_locators.ok_button}

Select A Group From Move To Group
    [Arguments]    ${groupName}
    Wait Until Element Is Visible    ${devices_page_locators.group_drop}    ${TIME}
    Click Element                    ${devices_page_locators.group_drop}
    ${XPATH} =    list_xpath.Obtain Xpath To Select A Group Type    ${groupName}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Validate Move Device
    Wait Until Element Is Visible    ${devices_page_locators.move_message}    ${TIME}
    Wait Until Element Is Visible    ${devices_page_locators.ok_button}       ${TIME}
    Click Element                    ${devices_page_locators.ok_button}
    Wait Until Element Is Visible    ${devices_page_locators.move_success}    ${TIME}
    Wait Until Element Is Visible    ${devices_page_locators.ok_button}       ${TIME}
    Click Element                    ${devices_page_locators.ok_button}

Click On The All Checkbox
    Wait Until Element Is Visible    ${devices_page_locators.first_checkbox}    ${TIME}
    Click Element                    ${devices_page_locators.first_checkbox}

Click On Kebab Option
    Wait Until Element Is Visible    ${devices_page_locators.kebab_button}    ${TIME}
    Click Element                    ${devices_page_locators.kebab_button}

Export as PDF file
    Wait Until Element Is Visible    ${devices_page_locators.export_pdf_button}    ${TIME}
    Click Element                    ${devices_page_locators.export_pdf_button}

Export as CVS file
    Wait Until Element Is Visible    ${devices_page_locators.export_csv_button}    ${TIME}
    Click Element                    ${devices_page_locators.export_csv_button}

Click On Add Device
    Wait Until Element Is Visible    ${devices_page_locators.add_device_button}    ${TIME}
    Click Element                    ${devices_page_locators.add_device_button}

Fill Device Info fields
    [Arguments]    ${deviceGroup}    ${deviceId}    ${description}    ${phoneNumber}    ${network}    ${platform}
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.device_combo}          ${TIME}
    Click Element                    ${devices_page_locators.device_combo}
    ${XPATH} =    list_xpath.Obtain Xpath For Combo                                 ${deviceGroup}
    Wait Until Element Is Visible    ${XPATH}                                       ${TIME}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${devices_page_locators.device_id_input}       ${TIME}
    Clear Element Text               ${devices_page_locators.device_id_input}
    Input Text                       ${devices_page_locators.device_id_input}       ${deviceId}
    Wait Until Element Is Visible    ${devices_page_locators.description_input}     ${TIME}
    Clear Element Text               ${devices_page_locators.description_input}
    Input Text                       ${devices_page_locators.description_input}     ${description}
    Wait Until Element Is Visible    ${devices_page_locators.phone_number_input}    ${TIME}
    Clear Element Text               ${devices_page_locators.phone_number_input}
    Input Text                       ${devices_page_locators.phone_number_input}    ${phoneNumber}
    Wait Until Element Is Visible    ${devices_page_locators.network_combo}         ${TIME}
    Click Element                    ${devices_page_locators.network_combo}
    ${XPATH} =    list_xpath.Obtain Xpath For Combo                                 ${network}
    Wait Until Element Is Visible    ${XPATH}                                       ${TIME}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${devices_page_locators.platform_combo}        ${TIME}
    Click Element                    ${devices_page_locators.platform_combo}
    ${XPATH} =    list_xpath.Obtain Xpath For Combo                                 ${platform}
    Wait Until Element Is Visible    ${XPATH}                                       ${TIME}
    Click Element                    ${XPATH}

Edit Device Info fields
    [Arguments]    ${description}    ${phoneNumber}    ${network}    ${platform}
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${devices_page_locators.description_input}     ${TIME}
    Clear Element Text               ${devices_page_locators.description_input}
    Input Text                       ${devices_page_locators.description_input}     ${description}
    Wait Until Element Is Visible    ${devices_page_locators.phone_number_input}    ${TIME}
    Clear Element Text               ${devices_page_locators.phone_number_input}
    Input Text                       ${devices_page_locators.phone_number_input}    ${phoneNumber}
    Wait Until Element Is Visible    ${devices_page_locators.network_combo}         ${TIME}
    Click Element                    ${devices_page_locators.network_combo}
    ${XPATH} =    list_xpath.Obtain Xpath For Combo                                 ${network}
    Wait Until Element Is Visible    ${XPATH}                                       ${TIME}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${devices_page_locators.platform_combo}        ${TIME}
    Click Element                    ${devices_page_locators.platform_combo}
    ${XPATH} =    list_xpath.Obtain Xpath For Combo                                 ${platform}
    Wait Until Element Is Visible    ${XPATH}                                       ${TIME}
    Click Element                    ${XPATH}

Click On Save Button
    Wait Until Element Is Visible    ${devices_page_locators.save_button}    ${TIME}
    Click Element                    ${devices_page_locators.save_button}

Click On Edit Button
    Wait Until Element Is Visible    ${devices_page_locators.edit_button}    ${TIME}
    Click Element                    ${devices_page_locators.edit_button}

Click On Cancel Button
    Wait Until Element Is Visible    ${devices_page_locators.cancel_button}    ${TIME}
    Click Element                    ${devices_page_locators.cancel_button}

Succes Message Verification
    Wait Until Element Is Visible    ${devices_page_locators.success_message_add}    ${TIME}
    Wait Until Element Is Visible    ${devices_page_locators.ok_button}              ${TIME}
    Click Element                    ${devices_page_locators.ok_button}

Activation Status Verification
    Wait Until Element Is Visible    ${devices_page_locators.activation_status}    ${TIME}

Device Info Verification
    [Arguments]    ${deviceId}    ${description}    ${network}    ${platform}
    ${XPATH} =    list_xpath.Obtain Xpath For Details    ${deviceId}
    Wait Until Element Is Visible    ${XPATH}            ${TIME}
    ${XPATH} =    list_xpath.Obtain Xpath For Details    ${description}
    Wait Until Element Is Visible    ${XPATH}            ${TIME}
    ${XPATH} =    list_xpath.Obtain Xpath For Details    ${network}
    Wait Until Element Is Visible    ${XPATH}            ${TIME}
    ${XPATH} =    list_xpath.Obtain Xpath For Details    ${platform}
    Wait Until Element Is Visible    ${XPATH}            ${TIME}

Click On Delete Button
    Wait Until Element Is Visible    ${devices_page_locators.delete_button}    ${TIME}
    Click Element                    ${devices_page_locators.delete_button}

Continue With Device Delete
    Wait Until Element Is Visible    ${devices_page_locators.delete_message}     ${TIME}
    Wait Until Element Is Visible    ${devices_page_locators.continue_button}    ${TIME}
    Click Element                    ${devices_page_locators.continue_button}

Verify That Device is Deleted
    Wait Until Element Is Visible    ${devices_page_locators.success_deleted}    ${TIME}
    Wait Until Element Is Visible    ${devices_page_locators.ok_button}          ${TIME}
    Click Element                    ${devices_page_locators.ok_button}
    
Scroll To Row Number
    [Arguments]    ${rowNumber}
    ${XPATH} =    list_xpath.Obtain Xpath For Row    ${rowNumber}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}

Validate Current Devices Number
    [Arguments]    ${current}
    ${XPATH} =    list_xpath.Obtain Xpath For Current Devices    ${current}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

Click On The Up Icon For The Column
    [Arguments]    ${column}
    ${XPATH} =    list_xpath.Obtain Xpath For Column    ${column}
    Wait Until Element Is Visible    ${XPATH}           ${TIME}
    Click Element                    ${XPATH}
    ${XPATH} =    list_xpath.Obtain Xpath For Up        ${column}
    Wait Until Element Is Visible    ${XPATH}           ${TIME}

Click On The Down Icon For The Column
    [Arguments]    ${column}
    ${XPATH} =    list_xpath.Obtain Xpath For Column    ${column}
    Wait Until Element Is Visible    ${XPATH}           ${TIME}
    Click Element                    ${XPATH}
    ${XPATH} =    list_xpath.Obtain Xpath For Down      ${column}
    Wait Until Element Is Visible    ${XPATH}           ${TIME}

Validate Fields From A SR4 OT1 Application
    Wait Until Element Is Visible    ${devices_page_locators.sr4_card}       ${TIME}

Validate That Device Is Not Found
    Wait Until Element Is Visible    ${devices_page_locators.no_devices_found}       ${TIME}
