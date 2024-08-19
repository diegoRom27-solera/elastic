
Load Distance Page
    Wait Until Element Is Visible    ${distance_page_locators.distance_title}                ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.add_distance_button}           ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.filter_button}                 ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.pagination_nav}                ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.page_select_select}            ${TIME}

Click Add Distance 
    Wait Until Element Is Visible    ${distance_page_locators.add_distance_button}           ${TIME}
    Click Element                    ${distance_page_locators.add_distance_button}

Load Add Distance Page 
    Wait Until Element Is Visible     ${distance_page_locators.add_distance_title}           ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.jurisdiction_label}           ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.jurisdiction_select}          ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.total_miles_label}            ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.total_miles_input}            ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.date_label}                   ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.date_input}                   ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.vehicle_id_label}             ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.vehicle_id_select}            ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.unit_type_label}              ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.unit_type_select}             ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.beginning_odometer_label}     ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.beginning_odometer_input}     ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.ending_odometer_label}        ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.ending_odometer_input}        ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.toll_miles_label}             ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.toll_miles_input}             ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.comments_label}               ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.comments_input}               ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.cancel_button}                ${TIME}
    Wait Until Element Is Visible     ${distance_page_locators.save_button}                  ${TIME}

Fill Jurisdiction 
    [Arguments]    ${jurisdiction}   
    Wait Until Element Is Visible    ${distance_page_locators.jurisdiction_select}           ${TIME}
    Select From List By Value        ${distance_page_locators.jurisdiction_select}           ${jurisdiction}
    
Fill Total Miles
    [Arguments]    ${totalMiles}   
    Wait Until Element Is Visible    ${distance_page_locators.total_miles_input}             ${TIME}
    Input Text                       ${distance_page_locators.total_miles_input}             ${totalMiles}

Fill Date
    [Arguments]    ${date}   
    Wait Until Element Is Visible    ${distance_page_locators.date_input}                    ${TIME}
    Input Text                       ${distance_page_locators.date_input}                    ${date}

Obtain Current Date
    ${date} =    Get Current Date    UTC    - 1 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Obtain Current Hour
    ${date} =    Get Current Date    UTC    -6 hour
    ${hour} =    list_xpath.Obtain Current Hour    ${date}
    [Return]    ${hour}

Obtain Tomorrow Date
    ${date} =    Get Current Date    UTC    + 1 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Fill Vehicle ID
    [Arguments]    ${vehicle}   
    Wait Until Element Is Visible    ${distance_page_locators.vehicle_id_select}             ${TIME}
    Click Element                    ${distance_page_locators.vehicle_id_select}
    Sleep                            ${SH_TIME}
    Select From List By Label        ${distance_page_locators.vehicle_id_select}             ${vehicle}

Fill Unit Type
    [Arguments]    ${unitType}   
    Wait Until Element Is Visible    ${distance_page_locators.unit_type_select}              ${TIME}
    Select From List By Label        ${distance_page_locators.unit_type_select}              ${unitType}

Fill Begining Odometer
    [Arguments]    ${beginningOdometer}   
    Wait Until Element Is Visible    ${distance_page_locators.beginning_odometer_input}      ${TIME}
    Input Text                       ${distance_page_locators.beginning_odometer_input}      ${beginningOdometer}

Fill Ending Odometer 
    [Arguments]    ${endingOdometer}   
    Wait Until Element Is Visible    ${distance_page_locators.ending_odometer_input}         ${TIME}
    Input Text                       ${distance_page_locators.ending_odometer_input}         ${endingOdometer}

Fill Toll Miles
    [Arguments]    ${tollMiles}   
    Wait Until Element Is Visible    ${distance_page_locators.toll_miles_input}              ${TIME}
    Input Text                       ${distance_page_locators.toll_miles_input}              ${tollMiles}

Fill comments
    [Arguments]    ${comments}   
    Wait Until Element Is Visible    ${distance_page_locators.comments_input}                ${TIME}
    Input Text                       ${distance_page_locators.comments_input}                ${comments}


Click Save Button 
    Wait Until Element Is Visible     ${distance_page_locators.save_button}                  ${TIME}
    Click Element                     ${distance_page_locators.save_button}
    Sleep    ${SH_TIME}

Vehicle ID Required 
    Wait Until Element Is Visible     ${distance_page_locators.vehicle_id_required}          ${TIME}

Click Filter Button
    Wait Until Element Is Visible    ${distance_page_locators.filter_button}                 ${TIME}
    Click Element                    ${distance_page_locators.filter_button}

Click On Vehicles List
    Wait Until Element Is Visible    ${distance_page_locators.vehicles_filter}               ${TIME}
    Click Element                    ${distance_page_locators.vehicles_filter}
    Wait Until Element Is Visible    ${distance_page_locators.search_input_text_filter}      ${TIME}

Click On Generate Button
    Wait Until Element Is Visible    ${distance_page_locators.generate_button_filter}        ${TIME}
    Scroll Element Into View         ${distance_page_locators.generate_button_filter}
    Click Element                    ${distance_page_locators.generate_button_filter}
    Sleep    ${SH_TIME}
    Click Element                    ${distance_page_locators.generate_button_filter}

Click On Reset All
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${distance_page_locators.reset_all_button_filter}       ${TIME}
    Click Element                    ${distance_page_locators.reset_all_button_filter}

Confirm Reset All
    Wait Until Element Is Visible    ${distance_page_locators.reset_all_popup_menu_title}      ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.reset_all_popup_menu_confirm}    ${TIME}
    Click Element                    ${distance_page_locators.reset_all_popup_menu_confirm}
    Sleep    ${SH_TIME}

Search By Vehicles
    [Arguments]    ${vehicles}
    Wait Until Element Is Visible    ${distance_page_locators.all_vehicles_checkbox_filter}    ${TIME}
    Click Element                    ${distance_page_locators.all_vehicles_checkbox_filter}
    Wait Until Element Is Visible    ${distance_page_locators.search_input_text_filter}        ${TIME}
    Input Text                       ${distance_page_locators.search_input_text_filter}        ${vehicles}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${vehicles}
    Wait Until Element Is Visible    ${XPATH}         ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}
    Click Element                    ${distance_page_locators.vehicles_filter}

Search By Tax Account 
    [Arguments]    ${taxAccount}
    Wait Until Element Is Visible    ${distance_page_locators.tax_account_select}              ${TIME}
    Select From List By Label        ${distance_page_locators.tax_account_select}              ${taxAccount}

Negative Values Warnings
    Wait Until Element Is Visible    ${distance_page_locators.beginning_odometer_warning}      ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.ending_odometer_warning}         ${TIME}

Add Days Warning
    [Arguments]    ${date}
    ${XPATH} =    list_xpath.Obtain Xpath Add Days Warning    ${date}
    Wait Until Element Is Visible    ${XPATH}                 ${TIME}

Required Miles Warning
    Wait Until Element Is Visible    ${distance_page_locators.miles_required_warning}        ${TIME}

Required Date Warning
    Wait Until Element Is Visible    ${distance_page_locators.date_required_warning}         ${TIME}
Required VehicleID Warning
    Wait Until Element Is Visible    ${distance_page_locators.vehicleid_required_warning}    ${TIME}

Clear Date Field
    Wait Until Element Is Visible    ${distance_page_locators.date_input}                    ${TIME}
    Click Element                    ${distance_page_locators.date_input}
    Sleep    5
    Press Keys                       ${distance_page_locators.date_input}                    DELETE
    Sleep    5
    
Clear Miles Field
    Wait Until Element Is Visible    ${distance_page_locators.total_miles_input}             ${TIME}
    Click Element                    ${distance_page_locators.total_miles_input}
    Press Keys                       ${distance_page_locators.total_miles_input}             DELETE

Search By Jurisdiction on Table
    [Arguments]    ${jurisdiction}    ${row}
    ${XPATH} =    list_xpath.obtain_xpath_by_jurisdiction_row_distance    ${jurisdiction}    ${row}
    Wait Until Element Is Visible    ${XPATH}         ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Load Edit Distance Tab
    Wait Until Element Is Visible    ${distance_page_locators.edit_title}                     ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.edit_distance_button}           ${TIME}

Click Edit Button
    Wait Until Element Is Visible    ${distance_page_locators.edit_distance_button}           ${TIME}
    Click Element                    ${distance_page_locators.edit_distance_button}

Load Latitude and Longitud
    Wait Until Element Is Visible    ${distance_page_locators.starting_latitude_label}        ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.starting_latitude_input}        ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.starting_longitude_label}       ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.starting_longitude_input}       ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.ending_latitude_label}          ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.ending_latitude_input}          ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.ending_longitude_label}         ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.ending_longitude_input}         ${TIME}

Generate Random Values   
    ${totalMiles}=    Generate Random String    4    [NUMBERS]
    [Return]    ${totalMiles}

Longitude and Latitude are not Visible 
    Element Should Not Be Visible    ${distance_page_locators.starting_latitude_label}         ${TIME}
    Element Should Not Be Visible    ${distance_page_locators.starting_latitude_input}         ${TIME}
    Element Should Not Be Visible    ${distance_page_locators.starting_longitude_label}        ${TIME}
    Element Should Not Be Visible    ${distance_page_locators.starting_longitude_input}        ${TIME}
    Element Should Not Be Visible    ${distance_page_locators.ending_latitude_label}           ${TIME}
    Element Should Not Be Visible    ${distance_page_locators.ending_latitude_input}           ${TIME}
    Element Should Not Be Visible    ${distance_page_locators.ending_longitude_label}          ${TIME}
    Element Should Not Be Visible    ${distance_page_locators.ending_longitude_input}          ${TIME}
    
Default Value Jurisdiction  
    [Arguments]    ${jurisdiction}
    Wait Until Element Is Visible    ${distance_page_locators.jurisdiction_select}             ${TIME}
    Element Should Contain           ${distance_page_locators.jurisdiction_select}             ${jurisdiction}

Default Value Total Miles 
    Selenium2Library.Element Text Should Be     ${distance_page_locators.total_miles_input}    ${Empty}

Default Value Date 
    ${value} =    Get Text                      ${distance_page_locators.date_input}
    Selenium2Library.Element Text Should Be     ${distance_page_locators.date_input}           ${value}

Default Value Unit Type 
    [Arguments]    ${unitType}
    Wait Until Element Is Visible    ${distance_page_locators.unit_type_select}                ${TIME}
    Element Should Contain           ${distance_page_locators.unit_type_select}                ${unitType}

Default Value Beginning Odometer 
    Selenium2Library.Element Text Should Be     ${distance_page_locators.beginning_odometer_input}     ${Empty}

Default Value Ending Odometer 
    Selenium2Library.Element Text Should Be     ${distance_page_locators.ending_odometer_input}        ${Empty} 

Click On Jurisdiction List
    Wait Until Element Is Visible    ${distance_page_locators.jurisdiction_filter}                 ${TIME}
    Click Element                    ${distance_page_locators.jurisdiction_filter}
    Wait Until Element Is Visible    ${distance_page_locators.search_input_text_filter}            ${TIME}

Search By Juridistion
    [Arguments]    ${juridistion}
    Wait Until Element Is Visible    ${distance_page_locators.all_juridistion_checkbox_filter}    ${TIME}
    Click Element                    ${distance_page_locators.all_juridistion_checkbox_filter}
    Wait Until Element Is Visible    ${distance_page_locators.search_input_text_filter}           ${TIME}
    Input Text                       ${distance_page_locators.search_input_text_filter}           ${juridistion}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${juridistion}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep    5
    Click Element                    ${distance_page_locators.jurisdiction_filter}

Click On Close Button From Filter
    Wait Until Element Is Visible    ${distance_page_locators.close_filter_button}                ${TIME}
    Click Element                    ${distance_page_locators.close_filter_button}

Search By Miles on Table
    [Arguments]    ${miles}    ${row}
    ${XPATH} =    list_xpath.obtain_xpath_by_miles_row_distance    ${miles}    ${row}
    Wait Until Element Is Visible    ${XPATH}         ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Load Default Jurisdictions 
    Wait Until Element Is Visible    ${distance_page_locators.all_juridistion_checkbox_filter}    ${TIME}    
    Element Should Contain           ${distance_page_locators.all_juridistion_checkbox_filter}    All Jurisdictions

Click On Tax Account
    Wait Until Element Is Visible    ${distance_page_locators.tax_account_select}                 ${TIME}
    Click Element                    ${distance_page_locators.tax_account_select}

Load Default Tax Account 
    Wait Until Element Is Visible    ${distance_page_locators.tax_account_select}                 ${TIME}
    Element Should Contain           ${distance_page_locators.tax_account_select}                 Any

Fill Start Date    
    [Arguments]    ${startDate}
    Wait Until Element Is Visible    ${distance_page_locators.start_date_filter}                 ${TIME}
    Input Text                       ${distance_page_locators.start_date_filter}                 ${startDate}

Fill End Date    
    [Arguments]    ${endDate}
    Wait Until Element Is Visible    ${distance_page_locators.end_date_filter}                   ${TIME}
    Input Text                       ${distance_page_locators.end_date_filter}                   ${endDate}

Obtain a past Week of Date
    ${date} =    Get Current Date    UTC    - 5 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Load Default Start Date
    Wait Until Element Is Visible               ${distance_page_locators.start_date_filter}      ${TIME}
    Selenium2Library.Element Text Should Be     ${distance_page_locators.start_date_filter}      ${Empty}

Load Default End Date
    Wait Until Element Is Visible               ${distance_page_locators.start_date_filter}      ${TIME}
    Selenium2Library.Element Text Should Be     ${distance_page_locators.start_date_filter}      ${Empty}

Load Default Vehicles 
    Wait Until Element Is Visible    ${distance_page_locators.all_vehicles_checkbox_filter}      ${TIME}    
    Element Should Contain           ${distance_page_locators.all_vehicles_checkbox_filter}      All Vehicles
    Click Element                    ${distance_page_locators.vehicles_filter}

Click On Cancel Reset Button 
    Wait Until Element Is Visible    ${distance_page_locators.reset_all_popup_menu_cancel}       ${TIME}
    Click Element                    ${distance_page_locators.reset_all_popup_menu_cancel}

Compare Start Date 
    [Arguments]    ${startDate}
    ${comparison} =    Obtain a past Week of Date
    Should Be Equal As Strings    ${startDate}    ${comparison}

Compare End Date 
    [Arguments]    ${endDate}
    ${comparison} =    Obtain Current Date
    Should Be Equal As Strings    ${endDate}    ${comparison}

Compare Tax Account 
    Element Should Contain    ${distance_page_locators.tax_account_select}                       HUMBERTOS TAX ACCOUNT

Compare Jurisdiction
    ${jurisdiction} =    Get Text    ${distance_page_locators.jurisdiction_filter}
    Element Should Contain    ${distance_page_locators.all_juridistion_checkbox_filter}          ${jurisdiction}

Compare Vehicles 
    ${vehicles} =    Get Text   ${distance_page_locators.vehicles_filter}
    Element Should Contain      ${distance_page_locators.vehicles_filter}   ${vehicles}

Jurisdiction not selected 
    Wait Until Element Is Visible     ${distance_page_locators.all_juridistion_checkbox_filter}    ${TIME}
    Click Element                     ${distance_page_locators.all_juridistion_checkbox_filter}
    Click Element                     ${distance_page_locators.jurisdiction_filter}

Vehicle ID not selected 
    Wait Until Element Is Visible     ${distance_page_locators.all_vehicles_checkbox_filter}    ${TIME}
    Click Element                     ${distance_page_locators.all_vehicles_checkbox_filter}
    Click Element                     ${distance_page_locators.vehicles_filter}

Apply Button is disable
    Scroll Element Into View         ${distance_page_locators.generate_button_filter}    
    Wait Until Element Is Visible    ${distance_page_locators.generate_button_filter}    ${TIME}
    Element Should Be Disabled       ${distance_page_locators.generate_button_filter}
    
Clear Start Date Filter
    Wait Until Element Is Visible    ${distance_page_locators.start_date_filter}         ${TIME}
    Click Element                    ${distance_page_locators.start_date_filter}
    Sleep    5
    Press Keys                       ${distance_page_locators.start_date_filter}         DELETE
    Sleep    5

Clear End Date Filter
    Wait Until Element Is Visible    ${distance_page_locators.end_date_filter}           ${TIME}
    Click Element                    ${distance_page_locators.end_date_filter}
    Sleep    5
    Press Keys                       ${distance_page_locators.end_date_filter}           DELETE
    Sleep    5

Start and End Date Warning
    [Arguments]    ${date}
    ${XPATH} =    list_xpath.Obtain Xpath Add Days Warning    ${date}
    Wait Until Element Is Visible    ${XPATH}                 ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.end_Date_warning}          ${TIME}

Total Miles Length Warning is unable
    Element Should Not Be Visible    ${distance_page_locators.total_miles_warning_length}    ${TIME}

Beginning Odometer Length Warnig is unable
    Element Should Not Be Visible    ${distance_page_locators.beginning_odometer_warning_length}    ${TIME}

Ending Odometer Length Warnig is unable 
    Element Should Not Be Visible    ${distance_page_locators.ending_odometer_warning_length}    ${TIME}

Toll Miles Length Warnig is unable
    Element Should Not Be Visible    ${distance_page_locators.toll_miles_warning_length}    ${TIME}

Comments Length Warnig is unable
    Element Should Not Be Visible    ${distance_page_locators.comments_warning_length}    ${TIME}

Load Total Miles Warning Length
    Wait Until Element Is Visible    ${distance_page_locators.total_miles_warning_length}    ${TIME}

Load Beginning Odometer Warning Length
    Wait Until Element Is Visible    ${distance_page_locators.beginning_odometer_warning_length}    ${TIME}

Load Ending Odometer Warning Length
    Wait Until Element Is Visible    ${distance_page_locators.ending_odometer_warning_length}    ${TIME}

Load Toll Miles Warning Length    
    Wait Until Element Is Visible    ${distance_page_locators.toll_miles_warning_length}    ${TIME}

Load Comments Warning Length    
    Wait Until Element Is Visible    ${distance_page_locators.comments_warning_length}    ${TIME}

Search By Vehicle on Table
    [Arguments]    ${vehicle}    ${row}
    ${XPATH} =    list_xpath.obtain_xpath_by_vehicle_row_fuel    ${vehicle}    ${row}
    Wait Until Element Is Visible    ${XPATH}         ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME} 

Reorder Distance Page Columns 
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${distance_page_locators.headers_table}         ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.jurisdiction_label_table}    ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.ending_odometer_label_table}            ${TIME}
    Drag And Drop                    ${distance_page_locators.jurisdiction_label_table}    ${distance_page_locators.ending_odometer_label_table} 

Validate That The Table Headers Are In New Position
    Wait Until Element Is Visible    ${distance_page_locators.headers_table}    ${TIME}
    Sleep    ${SH_TIME}
    ${headers} =     Get Text    ${distance_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nTotal Miles\nDate\nTime\nToll Miles\nBeginning Odometer\nEnding Odometer\nJurisdiction\nType\nUser Review Required
    Should Be Equal As Strings    ${headers}    ${headers_default}

Default Distance Page Table Columns 
    Wait Until Element Is Visible    ${distance_page_locators.headers_table}            ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.jurisdiction_label_table}       ${TIME}
    Wait Until Element Is Visible    ${distance_page_locators.vehicle_id_label_table}         ${TIME}
    Drag And Drop                    ${distance_page_locators.jurisdiction_label_table}       ${distance_page_locators.vehicle_id_label_table}
    Sleep                            ${SH_TIME}

Validate That The Table Headers Are In Default Position
    Wait Until Element Is Visible    ${distance_page_locators.headers_table}    ${TIME}
    Sleep    ${SH_TIME}
    ${headers} =     Get Text        ${distance_page_locators.headers_table}
    ${headers_default} =    Set Variable    Jurisdiction\nVehicle ID\nTotal Miles\nDate\nTime\nToll Miles\nBeginning Odometer\nEnding Odometer\nType\nUser Review Required
    Should Be Equal As Strings    ${headers}    ${headers_default}

Unselect Jurisdictions List
    Scroll Element Into View         ${distance_page_locators.AB_juridistion_checkbox_filter}
    Wait Until Element Is Visible    ${distance_page_locators.AB_juridistion_checkbox_filter}    ${TIME}
    Scroll Element Into View         ${distance_page_locators.AK_juridistion_checkbox_filter}
    Wait Until Element Is Visible    ${distance_page_locators.AK_juridistion_checkbox_filter}    ${TIME}
    Scroll Element Into View         ${distance_page_locators.AB_juridistion_checkbox_filter}
    Click Element                    ${distance_page_locators.AB_juridistion_checkbox_filter}
    Scroll Element Into View         ${distance_page_locators.AK_juridistion_checkbox_filter}
    Click Element                    ${distance_page_locators.AK_juridistion_checkbox_filter}

Unselect Vehicle List
    Scroll Element Into View         ${distance_page_locators.one_vehicle_checkbox_filter}
    Wait Until Element Is Visible    ${distance_page_locators.one_vehicle_checkbox_filter}        ${TIME}
    Scroll Element Into View         ${distance_page_locators.humv1_vehicle_checkbox_filter}
    Wait Until Element Is Visible    ${distance_page_locators.humv1_vehicle_checkbox_filter}      ${TIME}
    Scroll Element Into View         ${distance_page_locators.one_vehicle_checkbox_filter}
    Click Element                    ${distance_page_locators.one_vehicle_checkbox_filter} 
    Scroll Element Into View         ${distance_page_locators.humv1_vehicle_checkbox_filter}
    Click Element                    ${distance_page_locators.humv1_vehicle_checkbox_filter}


Obtain a past year of Date
    ${date} =    Get Current Date    UTC    - 367 day
    ${date} =    list_xpath.Obtain Date Correct Format  ${date}  
    [Return]    ${date}

Obtain a week after the past year of Date
    ${date} =    Get Current Date    UTC    - 364 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Search By Jurisdcition and Date and Value on Table
    [Arguments]    ${jurisdiction}    ${day}    ${value}
    ${XPATH} =    list_xpath.obtain_xpath_by_distnace_row    ${jurisdiction}    ${day}    ${value}
    Wait Until Element Is Visible    ${XPATH}         ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Obtain a past year of date correct format Table
    ${date} =    Get Current Date    UTC    - 367 day
    ${date} =    list_xpath.obtain_date_correct_format_distance_table    ${date}
    [Return]    ${date}

Select Records Per Page
    [Arguments]    ${page}
    Wait Until Element Is Visible    ${distance_page_locators.page_select_select}           ${TIME}
    Select From List By Label        ${distance_page_locators.page_select_select}           ${page}

Obtain current date correct format Table
    ${date} =    Get Current Date    UTC
    ${date} =    list_xpath.obtain_date_correct_format_distance_table    ${date}
    [Return]    ${date}