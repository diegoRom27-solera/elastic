
Load Vehicles Page From Device Manager
    Wait Until Element Is Visible    ${vehicles_page_locators.total_title}            ${TIME}

Click On Pair A Vehicle
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.kebab_button}           ${TIME}
    Click Element                    ${vehicles_page_locators.kebab_button}
    Wait Until Element Is Visible    ${vehicles_page_locators.pair_vehicle_button}    ${TIME}
    Click Element                    ${vehicles_page_locators.pair_vehicle_button}

Pair A Vehicle
    [Arguments]    ${deviceId}    ${vehicleGUID}    ${vehicleId}
    Wait Until Element Is Visible    ${vehicles_page_locators.device_info}            ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.device_id_input}        ${TIME}
    Input Text                       ${vehicles_page_locators.device_id_input}        ${deviceId}
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_guid_input}     ${TIME}
    Input Text                       ${vehicles_page_locators.vehicle_guid_input}     ${vehicleGUID}
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_id_input}       ${TIME}
    Input Text                       ${vehicles_page_locators.vehicle_id_input}       ${vehicleId}

Click On Save Button From Add Vehicle
    Wait Until Element Is Visible    ${vehicles_page_locators.save_button}            ${TIME}
    Click Element                    ${vehicles_page_locators.save_button}

Success Message
    Wait Until Element Is Visible    ${vehicles_page_locators.success_message}        ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.ok_button}              ${TIME}
    Click Element                    ${vehicles_page_locators.ok_button}
    Sleep    ${SH_TIME}

Error Message
    Wait Until Element Is Visible    ${vehicles_page_locators.error_message}        ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.ok_button}              ${TIME}
    Click Element                    ${vehicles_page_locators.ok_button}

Search A Vehicle
    [Arguments]    ${deviceId}
    Wait Until Element Is Visible    ${vehicles_page_locators.search_bar}        ${TIME}
    Input Text                       ${vehicles_page_locators.search_bar}        ${deviceId}
    Press Keys                       ${vehicles_page_locators.search_bar}        ENTER

Validate That A Vechicle Is Found
    [Arguments]    ${deviceId}
    ${XPATH} =    list_xpath.Obtain Xpath For Checkbox Device Id    ${deviceId}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

Remove Vehicle From Vehicles Page
    [Arguments]    ${deviceId}
    ${XPATH} =    list_xpath.Obtain Xpath For Checkbox Device Id                      ${deviceId}
    Wait Until Element Is Visible    ${XPATH}                                         ${TIME}
    Click Element                    ${XPATH}
    Wait Until Element Is Visible    ${vehicles_page_locators.trash_enable_button}    ${TIME}
    Click Element                    ${vehicles_page_locators.trash_enable_button}
    Wait Until Element Is Visible    ${vehicles_page_locators.message}                ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.continue_button}        ${TIME}
    Click Element                    ${vehicles_page_locators.continue_button}

Click On Edit Icon
    Wait Until Element Is Visible    ${vehicles_page_locators.edit_button}        ${TIME}
    Click Element                    ${vehicles_page_locators.edit_button}

Edit Device Info From Vehicle Page
    [Arguments]    ${vehicleGUID2}    ${vehicleId2}
    Wait Until Element Is Visible    ${vehicles_page_locators.device_info}            ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_guid_input}     ${TIME}
    Clear Element Text               ${vehicles_page_locators.vehicle_guid_input}
    Sleep                            ${SH_TIME}
    Input Text                       ${vehicles_page_locators.vehicle_guid_input}     ${vehicleGUID2}
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_id_input}       ${TIME}
    Clear Element Text               ${vehicles_page_locators.vehicle_id_input}
    Input Text                       ${vehicles_page_locators.vehicle_id_input}       ${vehicleId2}

Click On Update Button
    Wait Until Element Is Visible    ${vehicles_page_locators.update_button}       ${TIME}
    Click Element                    ${vehicles_page_locators.update_button}

Scroll To Row Number
    [Arguments]    ${rowNumber}
    ${XPATH} =    list_xpath.Obtain Xpath For Row    ${rowNumber}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}

Validate Total Devices Number
    [Arguments]    ${total}
    ${XPATH} =    list_xpath.Obtain Xpath For Total Devices    ${total}
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

Verify That A Vehicle Is Not Found
    Wait Until Element Is Visible    ${vehicles_page_locators.no_record_message}    ${TIME}