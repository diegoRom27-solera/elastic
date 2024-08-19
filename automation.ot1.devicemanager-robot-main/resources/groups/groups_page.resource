
Load Groups Page From Device Manager
    Wait Until Element Is Visible    ${groups_locators.search_bar}    ${TIME}
    Sleep                            ${SH_TIME}

Search A Group from Search Bar
    [Arguments]    ${groupName}
    Wait Until Element Is Visible    ${groups_locators.search_bar}    ${TIME}
    Input Text                       ${groups_locators.search_bar}    ${groupName}

Select A Group
    [Arguments]    ${groupName}
    ${XPATH} =    list_xpath.Obtain Xpath To Select A Group    ${groupName}
    Wait Until Element Is Visible    ${XPATH}                  ${ME_TIME}
    Click Element                    ${XPATH}

Switch To Apps Tab
    Wait Until Element Is Visible    ${groups_locators.apps_tab}       ${TIME}
    Click Element                    ${groups_locators.apps_tab}

Switch To Devices Tab
    Wait Until Element Is Visible    ${groups_locators.devices_tab}    ${TIME}
    Click Element                    ${groups_locators.devices_tab}

Switch To Info Tab
    Wait Until Element Is Visible    ${groups_locators.info_tab}       ${TIME}
    Click Element                    ${groups_locators.info_tab}

Click On Arrow Back from Group Details
    Wait Until Element Is Visible    ${groups_locators.arrow_back_button}    ${TIME}
    Click Element                    ${groups_locators.arrow_back_button}
    Sleep    ${SH_TIME}

Search Appcat
    [Arguments]    ${appcatName}
    Wait Until Element Is Visible    ${groups_locators.search_appcat}    ${TIME}
    Clear Element Text               ${groups_locators.search_appcat}
    Input Text                       ${groups_locators.search_appcat}    ${appcatName}
    ${XPATH} =    list_xpath.Obtain Xpath Click Appcat    ${appcatName}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Override to Appcat
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${groups_locators.appcat_text}            ${TIME}
    Mouse Over                       ${groups_locators.appcat_text}
    Wait Until Element Is Visible    ${groups_locators.setting_button}         ${TIME}
    Click Element                    ${groups_locators.setting_button}
    ${INHERIT} =    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${groups_locators.inherit_value_button}    ${UL_TIME}
    IF    '${INHERIT}[0]'=='PASS'
        Click Element                    ${groups_locators.inherit_value_button}
        Wait Until Element Is Visible    ${groups_locators.inherit_message}    ${TIME}
        Wait Until Element Is Visible    ${groups_locators.ok_button}          ${TIME}
        Click Element                    ${groups_locators.ok_button}
        Wait Until Element Is Visible    ${groups_locators.appcat_text}        ${TIME}
        Mouse Over                       ${groups_locators.appcat_text}
        Wait Until Element Is Visible    ${groups_locators.setting_button}     ${TIME}
        Click Element                    ${groups_locators.setting_button}
    END
    Wait Until Element Is Visible    ${groups_locators.override_button}        ${TIME}
    Click Element                    ${groups_locators.override_button}
    Wait Until Element Is Visible    ${groups_locators.edit_option}            ${TIME}
    Clear Element Text               ${groups_locators.edit_option}
    Input Text                       ${groups_locators.edit_option}            ${value}
    Wait Until Element Is Visible    ${groups_locators.send_button}            ${TIME}
    Click Element                    ${groups_locators.send_button}

Edit to Appcat
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${groups_locators.appcat_text}        ${TIME}
    Mouse Over                       ${groups_locators.appcat_text}
    Wait Until Element Is Visible    ${groups_locators.setting_button}    ${TIME}
    Click Element                    ${groups_locators.setting_button}
    Wait Until Element Is Visible    ${groups_locators.edit_button_appcat}       ${TIME}
    Click Element                    ${groups_locators.edit_button_appcat}
    Wait Until Element Is Visible    ${groups_locators.edit_option}       ${TIME}
    Clear Element Text               ${groups_locators.edit_option}
    Input Text                       ${groups_locators.edit_option}       ${value}
    Wait Until Element Is Visible    ${groups_locators.send_button}       ${TIME}
    Click Element                    ${groups_locators.send_button}

Inherit Value to Appcat
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${groups_locators.appcat_text}             ${TIME}
    Mouse Over                       ${groups_locators.appcat_text}
    Wait Until Element Is Visible    ${groups_locators.setting_button}          ${TIME}
    Click Element                    ${groups_locators.setting_button}
    Wait Until Element Is Visible    ${groups_locators.inherit_value_button}    ${TIME}
    Click Element                    ${groups_locators.inherit_value_button}

Verify Success Message
    Wait Until Element Is Visible    ${groups_locators.success_message}    ${TIME}
    Wait Until Element Is Visible    ${groups_locators.ok_button}          ${TIME}
    Click Element                    ${groups_locators.ok_button}

Verify Success Inherited Message
    Wait Until Element Is Visible    ${groups_locators.inherit_message}    ${TIME}
    Wait Until Element Is Visible    ${groups_locators.ok_button}          ${TIME}
    Click Element                    ${groups_locators.ok_button}

Click On Add Device Group
    Wait Until Element Is Visible    ${groups_locators.kebab_button}           ${TIME}
    Click Element                    ${groups_locators.kebab_button}
    Wait Until Element Is Visible    ${groups_locators.add_device_button}      ${TIME}
    Click Element                    ${groups_locators.add_device_button}

Click On Phone Group Settings
    Wait Until Element Is Visible    ${groups_locators.kebab_button}          ${TIME}
    Click Element                    ${groups_locators.kebab_button}
    Wait Until Element Is Visible    ${groups_locators.phone_settings_but}    ${TIME}
    Click Element                    ${groups_locators.phone_settings_but}

Fill Device Group Name
    [Arguments]    ${groupName}
    Wait Until Element Is Visible    ${groups_locators.name_input}             ${TIME}
    Input Text                       ${groups_locators.name_input}             ${groupName}

Select A Group Type
    [Arguments]    ${platform}
    Wait Until Element Is Visible    ${groups_locators.group_type_selector}    ${TIME}
    Click Element                    ${groups_locators.group_type_selector}
    ${XPATH} =    list_xpath.Obtain Xpath To Select A Group Type    ${platform}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Click On Apps Menu
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${groups_locators.apps_selector}    ${TIME}
    Click Element                    ${groups_locators.apps_selector}

Check Or Uncheck An App
    [Arguments]    ${App}
    ${XPATH} =    list_xpath.Obtain Xpath To Select A Group Type    ${App}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Validate that the application is not found in the dropdown
    [Arguments]    ${App}
    ${XPATH} =    list_xpath.Obtain Xpath To Select A Group Type Do Not Found    ${App}
    Sleep    ${MI_TIME}
    Wait Until Element Is Not Visible    ${XPATH}    ${TIME}

Press Escape Keyword
    Wait Until Element Is Visible    ${groups_locators.name_input}    ${TIME}
    # Click Element                    ${groups_locators.name_input}
    Press Keys                       ${groups_locators.name_input}    ESC

Click On Save Button
    Wait Until Element Is Visible    ${groups_locators.save_button}    ${TIME}
    Click Element                    ${groups_locators.save_button}

Verify Success Message from Add Device Group
    Wait Until Element Is Visible    ${groups_locators.group_message}    ${TIME}

Verify Updated Message from Add Device Group
    Wait Until Element Is Visible    ${groups_locators.group_updated}    ${TIME}

Click On OK Button
    Wait Until Element Is Visible    ${groups_locators.ok_button}    ${TIME}
    Click Element                    ${groups_locators.ok_button}

Search A Device With Serial Number
    [Arguments]    ${deviceId}
    Wait Until Element Is Visible    ${groups_locators.search_device_tab}    ${TIME}
    Input Text                       ${groups_locators.search_device_tab}    ${deviceId}

Select A Device With Serial Number
    [Arguments]    ${deviceId}
    ${XPATH} =    list_xpath.Obtain Xpath Device Searched    ${deviceId}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Click On Delete Button from Info Tab
    Wait Until Element Is Visible    ${groups_locators.delete_button}    ${TIME}
    Click Element                    ${groups_locators.delete_button}

Click On Edit Button from Info Tab
    Wait Until Element Is Visible    ${groups_locators.edit_button}    ${TIME}
    Click Element                    ${groups_locators.edit_button}

Continue With Group Delete
    Wait Until Element Is Visible    ${groups_locators.delete_message}     ${TIME}
    Wait Until Element Is Visible    ${groups_locators.continue_button}    ${TIME}
    Click Element                    ${groups_locators.continue_button}

Verify That Groups is Deleted
    Wait Until Element Is Visible    ${groups_locators.success_deleted}    ${TIME}
    Wait Until Element Is Visible    ${groups_locators.ok_button}          ${TIME}
    Click Element                    ${groups_locators.ok_button}

Select Group Type Filter
    [Arguments]    ${groupName}
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${groups_locators.search_bar}    ${TIME}
    Click Element                    ${groups_locators.search_bar}
    ${XPATH} =    list_xpath.Obtain Xpath For Select A Group    ${groupName}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Enbale Delete Button
    Wait Until Element Is Visible    ${groups_locators.delete_button}    ${TIME}

Disable Delete Button
    Wait Until Element Is Not Visible    ${groups_locators.delete_button}    ${TIME}

Click On Favorite Button
    Wait Until Element Is Visible    ${groups_locators.favorite_button}    ${TIME}
    Click Element                        ${groups_locators.favorite_button}

Default Group Sucess Message
    Wait Until Element Is Visible    ${groups_locators.default_group_mes}    ${TIME}
    Wait Until Element Is Visible    ${groups_locators.ok_button}            ${TIME}
    Click Element                    ${groups_locators.ok_button}
    Wait Until Element Is Visible    ${groups_locators.favorite_success}     ${TIME}
    Wait Until Element Is Visible    ${groups_locators.ok_button}            ${TIME}
    Click Element                    ${groups_locators.ok_button}

Click On Simple Configuration Option
    Wait Until Element Is Visible    ${groups_locators.simple_button}   ${TIME}
    Click Element                    ${groups_locators.simple_button}

Click On Group Configuration Option
    Wait Until Element Is Visible    ${groups_locators.group_button}   ${TIME}
    Click Element                    ${groups_locators.group_button}

Click On Save From Group Configuration
    Wait Until Element Is Visible    ${groups_locators.save_configuration}   ${TIME}
    Click Element                    ${groups_locators.save_configuration}

Click On Cancel From Group Configuration
    Wait Until Element Is Visible    ${groups_locators.cancel_configuration}   ${TIME}
    Click Element                    ${groups_locators.cancel_configuration}

Validate Fields From A AMGC Platform
    Wait Until Element Is Visible    ${groups_locators.amgc_card}      ${TIME}
    Wait Until Element Is Visible    ${groups_locators.bendix_card}    ${TIME}
    Wait Until Element Is Visible    ${groups_locators.fault_card}     ${TIME}
    Wait Until Element Is Visible    ${groups_locators.panic_card}     ${TIME}

Validate Fields From A IVGB Platform
    Wait Until Element Is Visible    ${groups_locators.ivgb_card}      ${TIME}
    Wait Until Element Is Visible    ${groups_locators.bendix_card}    ${TIME}
    Wait Until Element Is Visible    ${groups_locators.fault_card}     ${TIME}
    Wait Until Element Is Visible    ${groups_locators.panic_card}     ${TIME}

Validate Fields From A SR4 Platform
    Wait Until Element Is Visible    ${groups_locators.sr4_ot1_v2_card}    ${TIME}
    Wait Until Element Is Visible    ${groups_locators.sr4_ot1_v3_card}    ${TIME}

Validate Fields From A SR4 OT1 Application
    Wait Until Element Is Visible    ${groups_locators.sr4_card}       ${TIME}

Validate Fields From A SR5 Platform
    Wait Until Element Is Visible    ${groups_locators.sr5_card}       ${TIME}

Ensure That Bendix Appcat Is Not Visible
    Wait Until Element Is Not Visible    ${groups_locators.bendix_card}    ${TIME}

Ensure That Fault Monitoring Group Appcat Is Not Visible
    Wait Until Element Is Not Visible    ${groups_locators.fault_card}    ${TIME}

Ensure That Panic Appcat Is Not Visible
    Wait Until Element Is Not Visible    ${groups_locators.panic_card}    ${TIME}

Ensure That SR5 App Is Not Visible
    Wait Until Element Is Not Visible    ${groups_locators.sr5_card}    ${TIME}

Ensure That SD-SR4CONTSROTDM Group App Is Not Visible
    Wait Until Element Is Not Visible    ${groups_locators.sr4_ot1_v2_card}    ${TIME}

Ensure That SD-SR4CONT Group App Is Not Visible
    Wait Until Element Is Not Visible    ${groups_locators.sr4_ot1_v3_card}    ${TIME}

Validate That Only AMGC Is Visible
    Wait Until Element Is Visible        ${groups_locators.type_amgc}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivg}           ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivgb}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_phone}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_sdsr4cont}     ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_relay}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ng21}          ${TIME}

Validate That Only IVG Is Visible
    Wait Until Element Is Visible        ${groups_locators.type_ivg}           ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_amgc}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivgb}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_phone}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_sdsr4cont}     ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_relay}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ng21}          ${TIME}

Validate That Only IVGB Is Visible
    Wait Until Element Is Visible        ${groups_locators.type_ivgb}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_amgc}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_phone}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_sdsr4cont}     ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_relay}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ng21}          ${TIME}

Validate That Only PHONE Is Visible
    Wait Until Element Is Visible        ${groups_locators.type_phone}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_amgc}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivg}           ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivgb}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_sdsr4cont}     ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_relay}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ng21}          ${TIME}

Validate That Only SD-SR4CONT Is Visible
    Wait Until Element Is Visible        ${groups_locators.type_sdsr4cont}     ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_amgc}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivg}           ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivgb}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_phone}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_relay}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ng21}          ${TIME}

Validate That Only XRS-RELAY Is Visible
    Wait Until Element Is Visible        ${groups_locators.type_relay}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_amgc}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivg}           ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivgb}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_phone}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_sdsr4cont}     ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ng21}          ${TIME}

Validate That Only NG21 Is Visible
    Wait Until Element Is Visible        ${groups_locators.type_ng21}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_amgc}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivg}           ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivgb}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_phone}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_sdsr4cont}     ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_relay}         ${TIME}

Validate That Only SR5 Is Visible
    Wait Until Element Is Visible        ${groups_locators.type_sr5}           ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_amgc}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivg}           ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_ivgb}          ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_phone}         ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_sdsr4cont}     ${TIME}
    Wait Until Element Is Not Visible    ${groups_locators.type_relay}         ${TIME}

Click On Close Button
    Wait Until Element Is Visible        ${groups_locators.close_button}    ${TIME}
    Click Element                        ${groups_locators.close_button}

Click On Enable or Disable Slider
    Wait Until Element Is Visible        ${groups_locators.enable_button}    ${TIME}
    Click Element                        ${groups_locators.enable_button}

Validate Enable Title
    Wait Until Element Is Visible        ${groups_locators.enable_title}    ${TIME}

Validate Disable Title
    Wait Until Element Is Visible        ${groups_locators.disable_title}    ${TIME}

Validate Update Message From Slider Button
    Wait Until Element Is Visible        ${groups_locators.enable_message}    ${TIME}
    Wait Until Element Is Visible        ${groups_locators.ok_button}         ${TIME}
    Click Element                        ${groups_locators.ok_button}

Search Group And If It Exists Delete It
    [Arguments]    ${deviceGroup}
    Search A Group from Search Bar    ${deviceGroup}
    Select A Group    ${deviceGroup}
    Click On Delete Button from Info Tab
    Continue With Group Delete
    Verify That Groups is Deleted
    Load Groups Page From Device Manager