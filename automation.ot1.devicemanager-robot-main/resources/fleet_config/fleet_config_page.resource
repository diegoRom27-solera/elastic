
Load Fleet Config Page From Device Manager
    Wait Until Element Is Visible    ${fleet_config_locators.search_bar}    ${TIME}

Select An Platform From Search Bar
    [Arguments]    ${platform}
    Wait Until Element Is Visible    ${fleet_config_locators.search_bar}      ${TIME}
    Click Element                    ${fleet_config_locators.search_bar}
    ${XPATH} =    list_xpath.Obtain Xpath For Select A Platform From Fleet    ${platform}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}
    Sleep    ${SH_TIME}

Search Appcat
    [Arguments]    ${appcatName}
    Wait Until Element Is Visible    ${fleet_config_locators.search_appcat}    ${TIME}
    Clear Element Text               ${fleet_config_locators.search_appcat}
    Input Text                       ${fleet_config_locators.search_appcat}    ${appcatName}
    ${XPATH} =    list_xpath.Obtain Xpath Click Appcat    ${appcatName}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Override to Appcat
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.appcat_text}        ${TIME}
    Mouse Over                       ${fleet_config_locators.appcat_text}
    Wait Until Element Is Visible    ${fleet_config_locators.setting_button}     ${TIME}
    Click Element                    ${fleet_config_locators.setting_button}
    ${INHERIT} =    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${fleet_config_locators.inherit_value_button}    ${UL_TIME}
    IF    '${INHERIT}[0]'=='PASS'
        Click Element                    ${fleet_config_locators.inherit_value_button}
        Wait Until Element Is Visible    ${fleet_config_locators.inherit_message}    ${TIME}
        Wait Until Element Is Visible    ${fleet_config_locators.ok_button}          ${TIME}
        Click Element                    ${fleet_config_locators.ok_button}
        Wait Until Element Is Visible    ${fleet_config_locators.appcat_text}        ${TIME}
        Mouse Over                       ${fleet_config_locators.appcat_text}
        Wait Until Element Is Visible    ${fleet_config_locators.setting_button}     ${TIME}
        Click Element                    ${fleet_config_locators.setting_button}
    END
    Wait Until Element Is Visible    ${fleet_config_locators.override_button}    ${TIME}
    Click Element                    ${fleet_config_locators.override_button}
    Wait Until Element Is Visible    ${fleet_config_locators.edit_option}        ${TIME}
    Clear Element Text               ${fleet_config_locators.edit_option}
    Input Text                       ${fleet_config_locators.edit_option}        ${value}
    Wait Until Element Is Visible    ${fleet_config_locators.send_button}        ${TIME}
    Click Element                    ${fleet_config_locators.send_button}

Edit to Appcat
    [Arguments]    ${value}
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.appcat_text}       ${TIME}
    Mouse Over                       ${fleet_config_locators.appcat_text}
    Wait Until Element Is Visible    ${fleet_config_locators.setting_button}    ${TIME}
    Click Element                    ${fleet_config_locators.setting_button}
    Wait Until Element Is Visible    ${fleet_config_locators.edit_button}       ${TIME}
    Click Element                    ${fleet_config_locators.edit_button}
    Wait Until Element Is Visible    ${fleet_config_locators.edit_option}       ${TIME}
    Clear Element Text               ${fleet_config_locators.edit_option}
    Input Text                       ${fleet_config_locators.edit_option}       ${value}
    Wait Until Element Is Visible    ${fleet_config_locators.send_button}       ${TIME}
    Click Element                    ${fleet_config_locators.send_button}

Inherit Value to Appcat
    Sleep    ${MI_TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.appcat_text}             ${TIME}
    Mouse Over                       ${fleet_config_locators.appcat_text}
    Wait Until Element Is Visible    ${fleet_config_locators.setting_button}          ${TIME}
    Click Element                    ${fleet_config_locators.setting_button}
    Wait Until Element Is Visible    ${fleet_config_locators.inherit_value_button}    ${TIME}
    Click Element                    ${fleet_config_locators.inherit_value_button}

Verify Success Message
    Wait Until Element Is Visible    ${fleet_config_locators.success_message}    ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.ok_button}          ${TIME}
    Click Element                    ${fleet_config_locators.ok_button}

Verify Success Inherited Message
    Wait Until Element Is Visible    ${fleet_config_locators.inherit_message}    ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.ok_button}          ${TIME}
    Click Element                    ${fleet_config_locators.ok_button}

Validate Fields From A AMGC Platform
    Wait Until Element Is Visible    ${fleet_config_locators.amgc_card}      ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.bendix_card}    ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.fault_card}     ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.panic_card}     ${TIME}

Validate Fields From A IVG Platform
    Wait Until Element Is Visible    ${fleet_config_locators.title_ivg}      ${TIME}

Validate Fields From A IVGB Platform
    Wait Until Element Is Visible    ${fleet_config_locators.ivgb_card}      ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.bendix_card}    ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.fault_card}     ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.panic_card}     ${TIME}

Validate Fields From A PHONE Platform
    Wait Until Element Is Visible    ${fleet_config_locators.preauthenticate_card}    ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.title_phone}             ${TIME}

Validate Fields From A SD-SR2CONT Platform
    Wait Until Element Is Visible    ${fleet_config_locators.empty_field}    ${TIME}

Validate Fields From A SD-SR3CONT Platform
    Wait Until Element Is Visible    ${fleet_config_locators.empty_field}    ${TIME}

Validate Fields From A SD-SR4CONT Platform
    Wait Until Element Is Visible    ${fleet_config_locators.sr4cont_group_card}    ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.sr4cont_card}          ${TIME}

Validate Fields From A NG21 Platform
    Wait Until Element Is Visible    ${fleet_config_locators.amgc_card}                ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.bendix_card}              ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.fault_card}               ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.preauthenticate_card}     ${TIME}
    Wait Until Element Is Visible    ${fleet_config_locators.ng21_phone}               ${TIME}

Validate Fields From A SR5 Platform
    Wait Until Element Is Visible    ${fleet_config_locators.empty_field}    ${TIME}