Load Fuel Page
    Wait Until Element Is Visible    ${fuel_page_locators.fuel_tab}                            ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.imports_tab}                         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.fuel_title}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.add_fuel_button}                     ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel}                         ${LO_TIME}

Add Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.add_fuel_button}                     ${LO_TIME}
    Click Element                    ${fuel_page_locators.add_fuel_button}     

Load Fuel Receipt Page
    Wait Until Element Is Visible    ${fuel_page_locators.fuel_title_receipt}                  ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_label}                  ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.city_label}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vehicleid_label}                     ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.date_label}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.time_label}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.site_label}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.volume_label}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fueL_page_locators.units_label}                         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vendor_label}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.fuelcardnumber_label}                ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.totalprice_label}                    ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.currency_label}                      ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.invoice_label}                       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.comments_label}                      ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.cancel_button}                       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.save_button}                         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_select}                 ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.city_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vehicleid_select}                    ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.date_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.time_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.site_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.volume_input}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.units_select}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vendor_input}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.fuelcardnumber_input}                ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.totalprice_input}                    ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.currency_select}                     ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.invoice_input}                       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.comments_textarea}                   ${LO_TIME}

Fill Jurisdiction
    [Arguments]    ${jurisdiction}    
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_select}                 ${LO_TIME}
    Select From List By Label        ${fuel_page_locators.jurisdiction_select}                 ${jurisdiction}

Fill City
    [Arguments]    ${city}
    Wait Until Element Is Visible    ${fuel_page_locators.city_input}                          ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.city_input}
    Input Text                       ${fuel_page_locators.city_input}                          ${city}

Fill Vehicle 
    [Arguments]    ${vehicle}
    Wait Until Element Is Visible    ${fuel_page_locators.vehicleid_select}                    ${LO_TIME}
    Click Element                    ${fuel_page_locators.vehicleid_select}
    Sleep                            ${SH_TIME}
    Select From List By Label        ${fuel_page_locators.vehicleid_select}                    ${vehicle}

Fill Date
    [Arguments]    ${date}
    Wait Until Element Is Visible    ${fuel_page_locators.date_input}                          ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.date_input}
    Input Text                       ${fuel_page_locators.date_input}                          ${date}

Fill Time
    [Arguments]    ${time}
    Wait Until Element Is Visible    ${fuel_page_locators.time_input}                          ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.time_input}
    Input Text                       ${fuel_page_locators.time_input}                          ${time}

Fill Site
    [Arguments]    ${site}
    Wait Until Element Is Visible    ${fuel_page_locators.site_input}                          ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.site_input}
    Input Text                       ${fuel_page_locators.site_input}                          ${site}

Fill Volume
    [Arguments]    ${volume}
    Wait Until Element Is Visible    ${fuel_page_locators.volume_input}                        ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.volume_input}
    Input Text                       ${fuel_page_locators.volume_input}                        ${volume}

Fill Units
    [Arguments]    ${units}
    Wait Until Element Is Visible    ${fuel_page_locators.units_select}                        ${LO_TIME}
    Select From List By Label        ${fuel_page_locators.units_select}                        ${units}

Fill Vendor
    [Arguments]    ${vendor}
    Wait Until Element Is Visible    ${fuel_page_locators.vendor_input}                        ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.vendor_input}
    Input Text                       ${fuel_page_locators.vendor_input}                        ${vendor}

Fill Fuel Card
    [Arguments]    ${card}
    Wait Until Element Is Visible    ${fuel_page_locators.fuelcardnumber_input}                ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.fuelcardnumber_input}
    Input Text                       ${fuel_page_locators.fuelcardnumber_input}                ${card}  

Fill Total Price
    [Arguments]    ${price}
    Wait Until Element Is Visible    ${fuel_page_locators.totalprice_input}                    ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.totalprice_input}
    Input Text                       ${fuel_page_locators.totalprice_input}                    ${price} 
    
Fill Currency 
    [Arguments]    ${currency}
    Wait Until Element Is Visible    ${fuel_page_locators.currency_select}                     ${LO_TIME}
    Select From List By Label        ${fuel_page_locators.currency_select}                     ${currency}

Fill Invoice
    [Arguments]    ${invoice}
    Wait Until Element Is Visible    ${fuel_page_locators.invoice_input}                       ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.invoice_input}
    Input Text                       ${fuel_page_locators.invoice_input}                       ${invoice}

Fill Comment
    [Arguments]    ${comment}
    Wait Until Element Is Visible    ${fuel_page_locators.comments_textarea}                   ${LO_TIME}
    Clear Element Text               ${fuel_page_locators.comments_textarea}
    Input Text                       ${fuel_page_locators.comments_textarea}                   ${comment} 

Save Receipt Fuel
    Wait Until Element Is Visible    ${fuel_page_locators.save_button}                         ${LO_TIME}
    Click Element                    ${fuel_page_locators.save_button} 
    Sleep                                                                                      ${SH_TIME}         

Load Filter
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_title}                   ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_startdate_label}         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_startdate_input}         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_enddate_label}           ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_enddate_input}           ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_taxaccount_label}        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_taxaccount_select}       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_vehicles_label}          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_vehicles_input}          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_jurisdiction_label}      ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_jurisdiction_input}      ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_resetall_button}         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_apply_button}            ${LO_TIME}

Click On Filter Button
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel}                         ${LO_TIME}
    Click Element                    ${fuel_page_locators.filter_fuel}

Click On Vehicles List
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_vehicles_input}          ${LO_TIME}
    Click Element                    ${fuel_page_locators.filter_fuel_vehicles_input}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_vehicles_input}          ${LO_TIME}
                                                                                              
Click On Tax Account List
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_taxaccount_select}       ${LO_TIME}
    Click Element                    ${fuel_page_locators.filter_fuel_taxaccount_select}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_taxaccount_select}       ${LO_TIME}

Click On Jurisdiction List
    Scroll Element Into View         ${fuel_page_locators.jurisdiction_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_filter}                 ${LO_TIME}
    Click Element                    ${fuel_page_locators.jurisdiction_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.search_input_text_filter}            ${LO_TIME}

Vehicles List Is Activated
    Wait Until Element Is Visible    ${fuel_page_locators.vehicles_filter_activated}           ${LO_TIME}

Jurisdiction List Is Activated
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_filter_activated}       ${LO_TIME}

Click On Reset All
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_resetall_button}         ${LO_TIME}
    Click Element                    ${fuel_page_locators.filter_fuel_resetall_button}

Confirm Reset All
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_confirm_button}          ${LO_TIME}
    Click Element                    ${fuel_page_locators.filter_fuel_confirm_button}
    Sleep    ${SH_TIME}

Click On Generate Button
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_apply_button}            ${LO_TIME}
    Scroll Element Into View         ${fuel_page_locators.filter_fuel_apply_button}
    Sleep    ${SH_TIME}
    Click Element                    ${fuel_page_locators.filter_fuel_apply_button}
    Sleep    ${SH_TIME}


Search By Vehicle 
    [Arguments]    ${vehicles}    
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.all_vehicles_checkbox_filter}        ${LO_TIME}
    Click Element                    ${fuel_page_locators.all_vehicles_checkbox_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.vehicles_filter_search_input}        ${LO_TIME}
    Input Text                       ${fuel_page_locators.vehicles_filter_search_input}        ${vehicles}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${vehicles}
    Wait Until Element Is Visible    ${XPATH}    ${LO_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Search By Juridistion
    [Arguments]    ${juridistion}
    Wait Until Element Is Visible    ${fuel_page_locators.all_juridistion_checkbox_filter}    ${LO_TIME}
    Click Element                    ${fuel_page_locators.all_juridistion_checkbox_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.search_input_text_filter}           ${LO_TIME}
    Input Text                       ${fuel_page_locators.search_input_text_filter}           ${juridistion}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${juridistion}
    Wait Until Element Is Visible    ${XPATH}    ${LO_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}
    Click Element                    ${fuel_page_locators.jurisdiction_filter}

Search By Tax Account 
    [Arguments]    ${vehicles}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_taxaccount_select}       ${LO_TIME}
    Select From List By Label        ${fuel_page_locators.filter_fuel_taxaccount_select}       ${vehicles}
    Sleep                            ${SH_TIME}
    
Select Two Vehicles 
    [Arguments]    ${vehicles}    ${vehicle1}
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.all_vehicles_checkbox_filter}        ${LO_TIME}
    Click Element                    ${fuel_page_locators.all_vehicles_checkbox_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.vehicles_filter_search_input}        ${LO_TIME}
    Input Text                       ${fuel_page_locators.vehicles_filter_search_input}        ${vehicles}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${vehicles}
    Wait Until Element Is Visible    ${XPATH}    ${LO_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}
    Input Text                       ${fuel_page_locators.vehicles_filter_search_input}        ${vehicle1}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${vehicle1}
    Wait Until Element Is Visible    ${XPATH}    ${LO_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}
    Click Element                    ${fuel_page_locators.filter_fuel_vehicles_input}

Warnings requiered fields
    Wait Until Element Is Visible    ${fuel_page_locators.vehicle_id_warning}                  ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.volume_warning}                      ${LO_TIME}

Warnings requiered fields from Edit Fuel Receipt
    # Wait Until Element Is Visible    ${fuel_page_locators.time_warning}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.volume_warning}                      ${LO_TIME}

No Warnings requiered fields
    Wait Until Element Is Not Visible    ${fuel_page_locators.time_warning}                    ${LO_TIME}
    Wait Until Element Is Not Visible    ${fuel_page_locators.volume_warning}                  ${LO_TIME}

Date required field from Edit Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.date_warning}                        ${LO_TIME}

Time required field from Edit Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.time_warning}                        ${LO_TIME}

Enable Required warning fields
    Element Should Not Be Visible    ${fuel_page_locators.vehicle_id_warning}                  ${LO_TIME}
    Element Should Not Be Visible    ${fuel_page_locators.volume_warning}                      ${LO_TIME}

Warnings Exceeded Length
    Wait Until Element Is Visible    ${fuel_page_locators.city_characters_warning}             ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.site_characters_warning}             ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.volume_characters_warning}           ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vendor_character_warnig}             ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.fuelcard_character_warning}          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.totalprice_character_warning}        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.invoice_character_warning}           ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.comments_character_warning}          ${LO_TIME}
    
Click On Fuel Tab
    Wait Until Element Is Visible    ${fuel_page_locators.fuel_tab}                           ${LO_TIME}
    Click Element                    ${fuel_page_locators.fuel_tab}

Click On Import Tab
    Wait Until Element Is Visible    ${fuel_page_locators.imports_tab}                         ${LO_TIME}
    Click Element                    ${fuel_page_locators.imports_tab}

Load Import Page
    Wait Until Element Is Visible    ${fuel_page_locators.import_title}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_file_button}                  ${LO_TIME}

Click on Import File
    Wait Until Element Is Visible    ${fuel_page_locators.import_file_button}                  ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_file_button}    

Load Import Fuel Receipt Tab
    Wait Until Element Is Visible    ${fuel_page_locators.import_fuel_receipt_title}           ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_add_file_button}              ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_vendor_label}                 ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_vendor_select}                ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_fuel_uits_label}              ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_fuel_units_select}            ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_currency_label}               ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_currency_select}              ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_save_button}                  ${LO_TIME}

Click On Add File 
    Wait Until Element Is Visible    ${fuel_page_locators.import_add_file_button}              ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_add_file_button}

Obtain Current Date
    ${date} =    Get Current Date    UTC    - 1 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Obtain Tomorrow Date
    ${date} =    Get Current Date    UTC    + 1 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Reacomodate Date DD/MM/YY
    [Arguments]    ${DATE}
    ${date} =    list_xpath.Obtain Date MM DD AA    ${date}
    [Return]    ${date}

Obtain a past Week of Date
    ${date} =    Get Current Date    UTC    - 5 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Add Days Warning
    [Arguments]    ${date}
    ${XPATH} =    list_xpath.Obtain Xpath Add Days Warning    ${date}
    Wait Until Element Is Visible    ${XPATH}                 ${LO_TIME}

Default Value Jurisdiction  
    [Arguments]    ${jurisdiction}
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_select}             ${LO_TIME}
    Element Should Contain           ${fuel_page_locators.jurisdiction_select}             ${jurisdiction}

Default Value Date 
    ${value} =    Get Text                      ${fuel_page_locators.date_input}
    Selenium2Library.Element Text Should Be     ${fuel_page_locators.date_input}           ${value}

Default Value Time 
    ${time} =     Get Text                      ${fuel_page_locators.time_input}                      
    Selenium2Library.Element Text Should Be     ${fuel_page_locators.time_input}           ${time}

Default Value Unit  
    [Arguments]    ${unit}
    Wait Until Element Is Visible    ${fuel_page_locators.units_select}                    ${LO_TIME}
    Element Should Contain           ${fuel_page_locators.units_select}                    ${unit}

Default Value Currency  
    [Arguments]    ${currency}
    Wait Until Element Is Visible    ${fuel_page_locators.currency_select}                 ${LO_TIME}
    Element Should Contain           ${fuel_page_locators.currency_select}                 ${currency}

Obtain Current Hour
    ${time} =    Get Current Date    UTC    -6 hour
    ${hour} =    list_xpath.Obtain Current Hour    ${time}
    [Return]    ${hour}

Search By Jurisdiction on Table
    [Arguments]    ${jurisdiction}    ${row}
    ${XPATH} =    list_xpath.obtain_xpath_by_jurisdiction_row_fuel    ${jurisdiction}    ${row}
    Wait Until Element Is Visible    ${XPATH}         ${LO_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME} 

Click On Edit Button 
    Wait Until Element Is Visible    ${fuel_page_locators.edit_button}                 ${LO_TIME}
    Click Element                    ${fuel_page_locators.edit_button}

Generate Random Values   
    ${totalMiles}=    Generate Random String    3    [NUMBERS]
    [Return]    ${totalMiles}

Search By Time on Table
    [Arguments]    ${jurisdiction}    ${volume}
    ${XPATH} =    list_xpath.obtain_xpath_by_time_row_distance    ${jurisdiction}    ${volume}
    Wait Until Element Is Visible    ${XPATH}    ${SH_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Click On Close Button From Filter
    Wait Until Element Is Visible    ${fuel_page_locators.close_filter_button}                       ${LO_TIME}
    Click Element                    ${fuel_page_locators.close_filter_button}

Fill Start Date    
    [Arguments]    ${startDate}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_startdate_input}               ${LO_TIME}
    Input Text                       ${fuel_page_locators.filter_fuel_startdate_input}               ${startDate}

Fill End Date    
    [Arguments]    ${endDate}
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_enddate_input}                 ${LO_TIME}
    Input Text                       ${fuel_page_locators.filter_fuel_enddate_input}                 ${endDate}

Load Default Start Date
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_startdate_input}               ${LO_TIME}
    Selenium2Library.Element Text Should Be     ${fuel_page_locators.filter_fuel_startdate_input}    ${Empty}

Load Default End Date
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_enddate_input}                 ${LO_TIME}
    Selenium2Library.Element Text Should Be     ${fuel_page_locators.filter_fuel_enddate_input}      ${Empty}

Load Default Tax Account 
    Wait Until Element Is Visible    ${fuel_page_locators.filter_fuel_taxaccount_select}             ${LO_TIME}
    Element Should Contain           ${fuel_page_locators.filter_fuel_taxaccount_select}             Any

Load Default Vehicles 
    Wait Until Element Is Visible    ${fuel_page_locators.all_vehicles_checkbox_filter}              ${LO_TIME}    
    Element Should Contain           ${fuel_page_locators.all_vehicles_checkbox_filter}              All Vehicles
    Click Element                    ${fuel_page_locators.filter_fuel_vehicles_input}

Load Default Jurisdictions
    Wait Until Element Is Visible    ${fuel_page_locators.all_juridistion_checkbox_filter}           ${LO_TIME}    
    Element Should Contain           ${fuel_page_locators.all_juridistion_checkbox_filter}           All Jurisdictions

Load Negative Volume Warning
    Wait Until Element Is Visible    ${fuel_page_locators.volume_negative_value_warning}           ${LO_TIME}

Load Negative Total Price Warning
    Wait Until Element Is Visible    ${fuel_page_locators.total_price_negative_value_warning}      ${LO_TIME}

Load Format Currency Total Price Warning
    Wait Until Element Is Visible    ${fuel_page_locators.total_price_format_value_warning}      ${LO_TIME}

Click On Cancel Reset Button
    Wait Until Element Is Visible    ${fuel_page_locators.reset_all_popup_menu_cancel}       ${LO_TIME}
    Click Element                    ${fuel_page_locators.reset_all_popup_menu_cancel}

Compare Jurisdiction
    ${jurisdiction} =    Get Text    ${fuel_page_locators.jurisdiction_filter}
    Element Should Contain    ${fuel_page_locators.all_juridistion_checkbox_filter}          ${jurisdiction}
    Click Element             ${fuel_page_locators.jurisdiction_filter}

Compare Tax Account
    Element Should Contain    ${fuel_page_locators.filter_fuel_taxaccount_select}            HUMBERTOS TAX ACCOUNT

Compare Vehicles
    ${vehicles} =    Get Text   ${fuel_page_locators.filter_fuel_vehicles_input}
    Element Should Contain      ${fuel_page_locators.filter_fuel_vehicles_input}   ${vehicles}
    Click Element               ${fuel_page_locators.filter_fuel_vehicles_input}

Search By Vehicle on Table
    [Arguments]    ${vehicle}    ${row}
    ${XPATH} =    list_xpath.obtain_xpath_by_vehicle_row_fuel    ${vehicle}    ${row}
    Wait Until Element Is Visible    ${XPATH}         ${LO_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME} 

Compare Start Date
    [Arguments]    ${startDate}
    ${comparison} =    Obtain a past Week of Date
    Should Be Equal As Strings    ${startDate}    ${comparison}

Compare End Date
    [Arguments]    ${endDate}
    ${comparison} =    Obtain Current Date
    Should Be Equal As Strings    ${endDate}    ${comparison}


Reorder Fuel Page Columns
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.headers_table}               ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_label_table}    ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.site_label_table}            ${LO_TIME}
    Drag And Drop                    ${fuel_page_locators.jurisdiction_label_table}    ${fuel_page_locators.site_label_table} 

Drag And Drop File Name Column To Last Position From Imports Tab
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.headers_table}               ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.file_name_label_table}       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.status_label_table}          ${LO_TIME}
    Drag And Drop                    ${fuel_page_locators.file_name_label_table}       ${fuel_page_locators.status_label_table} 

Validate That The Table Headers Are In New Position
    Wait Until Element Is Visible    ${fuel_page_locators.headers_table}    ${LO_TIME}
    Sleep    ${SH_TIME}
    ${headers} =     Get Text    ${fuel_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nVolume\nTotal Price\nDate\nTime\nCity\nSite\nJurisdiction\nVendor\nInvoice\nCard Number
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In New Position From Imports Tab
    Wait Until Element Is Visible    ${fuel_page_locators.headers_table}    ${LO_TIME}
    Sleep    ${SH_TIME}
    ${headers} =     Get Text    ${fuel_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vendor\nCurrency\nUnits\nDate Imported\nTime\nStatus\nFile Name
    Should Be Equal As Strings    ${headers}    ${headers_default}

Default Fuel Page Table Columns
    Wait Until Element Is Visible    ${fuel_page_locators.headers_table}                  ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_label_table}       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vehicle_id_label_table}         ${LO_TIME}
    Drag And Drop                    ${fuel_page_locators.jurisdiction_label_table}       ${fuel_page_locators.vehicle_id_label_table}
    Sleep                            ${SH_TIME}

Drag And Drop File Name Column To First Position From Imports Tab
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.headers_table}               ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.file_name_label_table}       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.status_label_table}          ${LO_TIME}
    Drag And Drop                    ${fuel_page_locators.file_name_label_table}       ${fuel_page_locators.vendor_label_table} 

Validate That The Table Headers Are In Default Position
    Wait Until Element Is Visible    ${fuel_page_locators.headers_table}    ${LO_TIME}
    Sleep    ${SH_TIME}
    ${headers} =     Get Text        ${fuel_page_locators.headers_table}
    ${headers_default} =    Set Variable    Jurisdiction\nVehicle ID\nVolume\nTotal Price\nDate\nTime\nCity\nSite\nVendor\nInvoice\nCard Number
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In Default Position From Imports Tab
    Wait Until Element Is Visible    ${fuel_page_locators.headers_table}    ${LO_TIME}
    Sleep    ${SH_TIME}
    ${headers} =     Get Text        ${fuel_page_locators.headers_table}
    ${headers_default} =    Set Variable    File Name\nVendor\nCurrency\nUnits\nDate Imported\nTime\nStatus
    Should Be Equal As Strings    ${headers}    ${headers_default}

Unselect Jurisdictions List
    Scroll Element Into View         ${fuel_page_locators.AB_juridistion_checkbox_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.AB_juridistion_checkbox_filter}    ${LO_TIME}
    Scroll Element Into View         ${fuel_page_locators.AK_juridistion_checkbox_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.AK_juridistion_checkbox_filter}    ${LO_TIME}
    Scroll Element Into View         ${fuel_page_locators.AB_juridistion_checkbox_filter}
    Click Element                    ${fuel_page_locators.AB_juridistion_checkbox_filter}
    Scroll Element Into View         ${fuel_page_locators.AK_juridistion_checkbox_filter}
    Click Element                    ${fuel_page_locators.AK_juridistion_checkbox_filter}

Unselect Vehicle List
    Scroll Element Into View         ${fuel_page_locators.one_vehicle_checkbox_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.one_vehicle_checkbox_filter}        ${LO_TIME}
    Scroll Element Into View         ${fuel_page_locators.humv1_vehicle_checkbox_filter}
    Wait Until Element Is Visible    ${fuel_page_locators.humv1_vehicle_checkbox_filter}      ${LO_TIME}
    Scroll Element Into View         ${fuel_page_locators.one_vehicle_checkbox_filter}
    Click Element                    ${fuel_page_locators.one_vehicle_checkbox_filter} 
    Scroll Element Into View         ${fuel_page_locators.humv1_vehicle_checkbox_filter}
    Click Element                    ${fuel_page_locators.humv1_vehicle_checkbox_filter}

Select From Vendor Dropdown
    [Arguments]    ${VENDOR}
    Wait Until Element Is Visible    ${fuel_page_locators.import_vendor_label}    ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_vendor_label}
    ${XPATH} =    list_xpath.Obtain Xpath By Vendor Selector    ${VENDOR}
    Wait Until Element Is Visible    ${XPATH}    ${LO_TIME}
    Click Element                    ${XPATH}

Select From Fuel Units Dropdown
    [Arguments]    ${UNITS}
    Wait Until Element Is Visible    ${fuel_page_locators.import_vendor_label}    ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_vendor_label}
    ${XPATH} =    list_xpath.Obtain Xpath By Fuel Units Selector    ${UNITS}
    Wait Until Element Is Visible    ${XPATH}    ${LO_TIME}
    Click Element                    ${XPATH}

Select From Currency Dropdown
    [Arguments]    ${CURRENCY}
    Wait Until Element Is Visible    ${fuel_page_locators.import_vendor_label}    ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_vendor_label}
    ${XPATH} =    list_xpath.Obtain Xpath By Currency Selector    ${CURRENCY}
    Wait Until Element Is Visible    ${XPATH}    ${LO_TIME}
    Click Element                    ${XPATH}

Save Import File
    Wait Until Element Is Visible    ${fuel_page_locators.import_save_button}     ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_save_button} 
    Sleep                                                                         ${UL_TIME}

Validate Value In Import Data Row
    [Arguments]    ${FILE}    ${VALUE}
    ${XPATH} =    list_xpath.Validate Value From Import Row    ${FILE}    ${VALUE}
    Wait Until Element Is Visible    ${XPATH}    ${MD_TIME}

Validate Value In Imported Fuel File Data Row
    [Arguments]    ${VALUE}
    ${XPATH} =    list_xpath.Validate Import Row    ${VALUE}
    Wait Until Element Is Visible    ${XPATH}    ${MD_TIME}

Click On Import Data Row
    [Arguments]    ${FILE}
    ${XPATH} =    list_xpath.Validate Import Row    ${FILE}
    Wait Until Element Is Visible    ${XPATH}    ${LO_TIME}
    Click Element                    ${XPATH}

Click On Delete Button From Imported Fuel File
    Wait Until Element Is Visible    ${fuel_page_locators.import_delete_button}         ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_delete_button} 
    Sleep                                                                               ${UL_TIME}

Click On Yes Button From Import Fuel File
    Wait Until Element Is Visible    ${fuel_page_locators.import_yes_delete_button}     ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_yes_delete_button}
    Sleep                                                                               ${UL_TIME}

Click On Cancel Button
    Wait Until Element Is Visible    ${fuel_page_locators.import_cancel_button}         ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_cancel_button}

No Invalid Records From Imported Fuel File
    Wait Until Element Is Visible    ${fuel_page_locators.import_records_label}         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_records_value}         ${LO_TIME}
    ${VALUE} =    Get Value          ${fuel_page_locators.import_records_value}
    IF  '${VALUE}' == '0'
        Log    There aren't invalid records
    ELSE
        Log    There are invalid records
        Fail
    END

There are Invalid Records From Imported Fuel File
    Wait Until Element Is Visible    ${fuel_page_locators.import_records_label}         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.import_records_value}         ${LO_TIME}
    ${VALUE} =    Get Value          ${fuel_page_locators.import_records_value}
    IF  '${VALUE}' != '0'
        Log    There are invalid records
    ELSE
        Log    There aren't invalid records
        Fail
    END

Click On Replace File Button
    Wait Until Element Is Visible    ${fuel_page_locators.import_replace_file_button}    ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_replace_file_button}

Click On Approve Button
    Wait Until Element Is Visible    ${fuel_page_locators.import_approve_button}         ${LO_TIME}
    Click Element                    ${fuel_page_locators.import_approve_button}

Approve Button Is Not Visible
    Wait Until Element Is Not Visible    ${fuel_page_locators.import_approve_button}     ${LO_TIME}

Click On Close Button From Edit Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.row_close_button}              ${LO_TIME}
    Click Element                    ${fuel_page_locators.row_close_button}

Click On Delete Button From Edit Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.row_delete_button}             ${LO_TIME}
    Click Element                    ${fuel_page_locators.row_delete_button}

Verify that Delete Button is Disabled From Edit Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.row_delete_button_disabled}    ${LO_TIME}

Verify that Delete Button is Enabled From Edit Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.row_delete_button}             ${LO_TIME}

Click On Edit Button From Edit Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.row_edit_button}               ${LO_TIME}
    Click Element                    ${fuel_page_locators.row_edit_button}

Verify that Edit Button is Enabled From Edit Fuel Receipt
    Wait Until Element Is Visible    ${fuel_page_locators.row_edit_button}               ${LO_TIME}

Load Edit Fuel Receipt Page
    Wait Until Element Is Visible    ${fuel_page_locators.edit_title_receipt}                  ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_label}                  ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.city_label}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vehicleid_label}                     ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.date_label}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.time_label}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.site_label}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.volume_label}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fueL_page_locators.units_label}                         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vendor_label}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.fuelcardnumber_label}                ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.totalprice_label}                    ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.currency_label}                      ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.invoice_label}                       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.comments_label}                      ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.cancel_button}                       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.save_button}                         ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.jurisdiction_select}                 ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.city_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vehicleid_select}                    ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.date_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.time_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.site_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.volume_input}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.units_select}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.vendor_input}                        ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.fuelcardnumber_input}                ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.totalprice_input}                    ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.currency_select}                     ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.invoice_input}                       ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.comments_textarea}                   ${LO_TIME}

Select An Option From Record Per Page Dropdown
    [Arguments]    ${number}
    Wait Until Element Is Visible    ${fuel_page_locators.records_per_page_label}              ${LO_TIME}
    Select From List By Label        ${fuel_page_locators.records_per_page_dropdown}           ${number}

Fill Date and Time With Default Empty Data
    Wait Until Element Is Visible    ${fuel_page_locators.date_input}                          ${LO_TIME}
    Wait Until Element Is Visible    ${fuel_page_locators.time_input}                          ${LO_TIME}
    Click Element                    ${fuel_page_locators.date_input}
    Press Keys                       ${fuel_page_locators.date_input}                          \DELETE
    Click Element                    ${fuel_page_locators.time_input}
    Press Keys                       ${fuel_page_locators.time_input}                          \DELETE

Obtain a past year of Date
    ${date} =    Get Current Date    UTC    - 367 day
    ${date} =    list_xpath.Obtain Date Correct Format  ${date}  
    [Return]    ${date}

Obtain a week after the past year of Date
    ${date} =    Get Current Date    UTC    - 364 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Search By Jurisdcition and Date and Value on Table
    [Arguments]    ${jurisdiction}    ${day}    ${value}    ${time}
    ${XPATH} =    list_xpath.obtain_xpath_by_fuel_row    ${jurisdiction}    ${day}    ${value}    ${time}
    Wait Until Element Is Visible    ${XPATH}         ${LO_TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Obtain a past year of date correct format Table
    ${date} =    Get Current Date    UTC    - 367 day
    ${date} =    list_xpath.obtain_date_correct_format_distance_table    ${date}
    [Return]    ${date}

Select Records Per Page
    [Arguments]    ${page}
    Wait Until Element Is Visible    ${fuel_page_locators.records_per_page_dropdown}           ${LO_TIME}
    Select From List By Label        ${fuel_page_locators.records_per_page_dropdown}           ${page}