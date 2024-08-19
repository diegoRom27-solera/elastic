Load AppAdmin Page
    Wait Until Element Is Visible    ${appadmin_page_locators.appadmin_title}                                    ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.add_tax_account}                                   ${TIME}

Click On Add Tax Account 
    Wait Until Element Is Visible    ${appadmin_page_locators.add_tax_account}                                   ${TIME}
    Click Element                    ${appadmin_page_locators.add_tax_account}

Load Tax Account Page Company Information 
    Wait Until Element Is Visible    ${appadmin_page_locators.appadmin_title_taxaccount}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.company_name_label}                                ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.company_name_input}                                ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.street_label}                                      ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.street_input}                                      ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.city_label}                                        ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.city_input}                                        ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.state_province_label}                              ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.state_province_select}                             ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.zip_postal_code_label}                             ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.zip_postal_code_input}                             ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.unit_of_measure_label}                             ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.usd_gallon_label}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.cad_litre_label}                                   ${TIME}

Load Tax Account Page Tax Account Information 
    Scroll Element Into View         ${appadmin_page_locators.ny_hut_label}                     
    Wait Until Element Is Visible    ${appadmin_page_locators.appadmin_title_taxaccount_information}             ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.federal_id_label}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.federal_id_input}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.us_dot_number_label}                               ${TIME}     
    Wait Until Element Is Visible    ${appadmin_page_locators.us_dot_number_input}                               ${TIME}     
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_account_number_label}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_account_number_input}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_filing_jurisdiction_label}                    ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_filing_jurisdiction_select}                   ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_frequency_label}                              ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_frequency_select}                             ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.acceptable_fuel_efficiency_min_label}              ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.acceptable_fuel_efficiency_min_input}              ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.acceptable_fuel_efficiency_max_label}              ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.acceptable_fuel_efficiency_max_input}              ${TIME}

Load Tax Account Page Hut Jurisdictions
    Scroll Element Into View         ${appadmin_page_locators.available_vehicles_label}
    Wait Until Element Is Visible    ${appadmin_page_locators.ny_hut_label}                                      ${TIME}                
    Wait Until Element Is Visible    ${appadmin_page_locators.ky_hut_label}                                      ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.nm_hut_label}                                      ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.or_hut_label}                                      ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ct_hut_label}                                      ${TIME}

Load Tax Account Page Vehicles 
    Scroll Element Into View         ${appadmin_page_locators.save_button}
    Wait Until Element Is Visible    ${appadmin_page_locators.available_vehicles_label}                          ${TIME}                
    Wait Until Element Is Visible    ${appadmin_page_locators.selected_vehicles_label}                           ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.clear_all_button}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.search_vehicle_id_rigth}                           ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.search_vehicle_id_left}                            ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.vehicles_ul}                                       ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.add_selections_button}                             ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.cancel_button}                                     ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.save_button}                                       ${TIME}

Load NY HUT Fields
    Scroll Element Into View         ${appadmin_page_locators.ky_hut_label}
    Wait Until Element Is Visible    ${appadmin_page_locators.ny_hut_tax_payer_id_label}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ny_hut_tax_payer_id_input}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ny_hut_frequency}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ny_hut_frequency_select}                           ${TIME}

Load KY HUT Fields
    Scroll Element Into View         ${appadmin_page_locators.nm_hut_label}
    Wait Until Element Is Visible    ${appadmin_page_locators.ky_hut_tax_payer_id_label}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ky_hut_tax_payer_id_input}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ky_hut_frequency}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ky_hut_frequency_select}                           ${TIME}

Load NM HUT Fields
    Scroll Element Into View         ${appadmin_page_locators.or_hut_label}
    Wait Until Element Is Visible    ${appadmin_page_locators.nm_hut_tax_payer_id_label}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.nm_hut_tax_payer_id_input}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.nm_hut_frequency}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.nm_hut_frequency_select}                           ${TIME}

Load OR HUT Fields
    Scroll Element Into View         ${appadmin_page_locators.ct_hut_label}
    Wait Until Element Is Visible    ${appadmin_page_locators.or_hut_tax_payer_id_label}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.or_hut_tax_payer_id_input}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.or_hut_frequency}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.or_hut_frequency_select}                           ${TIME}

Load CT HUT Fields
    Scroll Element Into View         ${appadmin_page_locators.available_vehicles_label}
    Wait Until Element Is Visible    ${appadmin_page_locators.ct_hut_tax_payer_id_label}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ct_hut_tax_payer_id_input}                         ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ct_hut_frequency}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ct_hut_frequency_select}                           ${TIME}

Click On Save Tax Account Button
    Scroll Element Into View         ${appadmin_page_locators.save_button}
    Wait Until Element Is Visible    ${appadmin_page_locators.save_button}                                       ${TIME}
    Click Element                    ${appadmin_page_locators.save_button}
    Sleep                                                                                                        ${SH_TIME}

Click On Add Selection 
    Scroll Element Into View         ${appadmin_page_locators.add_selections_button}
    Wait Until Element Is Visible    ${appadmin_page_locators.add_selections_button}                             ${TIME}
    Click Element                    ${appadmin_page_locators.add_selections_button}

Click NY HUT toogle
    Scroll Element Into View         ${appadmin_page_locators.ny_hut_label}
    Wait Until Element Is Enabled    ${appadmin_page_locators.ny_hut_label}                                       ${TIME}
    Click Element                    ${appadmin_page_locators.ny_hut_label}

Click KY HUT toogle
    Scroll Element Into View         ${appadmin_page_locators.ky_hut_label}
    Wait Until Element Is Enabled    ${appadmin_page_locators.ky_hut_label}                                       ${TIME}
    Click Element                    ${appadmin_page_locators.ky_hut_label}

Click NM HUT toogle
    Scroll Element Into View         ${appadmin_page_locators.nm_hut_label}
    Wait Until Element Is Enabled    ${appadmin_page_locators.nm_hut_label}                                       ${TIME}
    Click Element                    ${appadmin_page_locators.nm_hut_label}

Click OR HUT toogle
    Scroll Element Into View         ${appadmin_page_locators.or_hut_label}
    Wait Until Element Is Enabled    ${appadmin_page_locators.or_hut_label}                                       ${TIME}
    Click Element                    ${appadmin_page_locators.or_hut_label}

Click CT HUT toogle
    Scroll Element Into View         ${appadmin_page_locators.ct_hut_label}
    Wait Until Element Is Enabled    ${appadmin_page_locators.ct_hut_label}                                       ${TIME}
    Click Element                    ${appadmin_page_locators.ct_hut_label}

Click Edit Button
    Wait Until Element Is Enabled    ${appadmin_page_locators.edit_button}                                        ${TIME}
    Click Element                    ${appadmin_page_locators.edit_button}

Fill Company Name 
    [Arguments]    ${company_name}
    Wait Until Element Is Visible    ${appadmin_page_locators.company_name_input}                                ${TIME}
    Input Text                       ${appadmin_page_locators.company_name_input}                                ${company_name}

Fill Street
    [Arguments]    ${street}
    Wait Until Element Is Visible    ${appadmin_page_locators.street_input}                                      ${TIME}
    Input Text                       ${appadmin_page_locators.street_input}                                      ${street}

Fill City 
    [Arguments]    ${city}
    Wait Until Element Is Visible    ${appadmin_page_locators.city_input}                                        ${TIME}
    Input Text                       ${appadmin_page_locators.city_input}                                        ${city}

Fill State 
    [Arguments]    ${state}
    Wait Until Element Is Visible    ${appadmin_page_locators.state_province_select}                             ${TIME}
    Select From List By Label        ${appadmin_page_locators.state_province_select}                             ${state}

Fill Zip Postal Code 
    [Arguments]    ${code}
    Wait Until Element Is Visible    ${appadmin_page_locators.zip_postal_code_input}                             ${TIME}
    Input Text                       ${appadmin_page_locators.zip_postal_code_input}                             ${code}

Fill Unit of Measure Gallon 
    Wait Until Element Is Visible    ${appadmin_page_locators.usd_gallon_label}                                  ${TIME}
    Click Element                    ${appadmin_page_locators.usd_gallon_label}       

Fill Unit of Measure Litre
    Wait Until Element Is Visible    ${appadmin_page_locators.cad_litre_label}                                   ${TIME}
    Click Element                    ${appadmin_page_locators.cad_litre_label}       

Fill Federal ID
    [Arguments]    ${federal}
    Wait Until Element Is Visible    ${appadmin_page_locators.federal_id_input}                                  ${TIME}
    Input Text                       ${appadmin_page_locators.federal_id_input}                                  ${federal}

Fill US DOT Number
    [Arguments]    ${usdotNumber}
    Wait Until Element Is Visible    ${appadmin_page_locators.us_dot_number_input}                               ${TIME}
    Input Text                       ${appadmin_page_locators.us_dot_number_input}                               ${usdotNumber}

Fill IFTA Account Number
    [Arguments]    ${iftanum}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_account_number_input}                         ${TIME}
    Input Text                       ${appadmin_page_locators.ifta_account_number_input}                         ${iftanum}

Fill IFTA jurisdiction 
    [Arguments]    ${jurisdiction}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_filing_jurisdiction_select}                   ${TIME}
    Select From List By Label        ${appadmin_page_locators.ifta_filing_jurisdiction_select}                   ${jurisdiction}

Fill Fuel Efficiency Min
    [Arguments]    ${fuelMin}
    Wait Until Element Is Visible    ${appadmin_page_locators.acceptable_fuel_efficiency_min_input}              ${TIME}
    Input Text                       ${appadmin_page_locators.acceptable_fuel_efficiency_min_input}              ${fuelMin}

Fill Fuel Efficiency Max
    [Arguments]    ${fuelMax}
    Wait Until Element Is Visible    ${appadmin_page_locators.acceptable_fuel_efficiency_max_input}              ${TIME}
    Input Text                       ${appadmin_page_locators.acceptable_fuel_efficiency_max_input}              ${fuelMax}

Fill NY HUT Tax Payer ID
    [Arguments]    ${nyHutid}
    Wait Until Element Is Visible    ${appadmin_page_locators.ny_hut_tax_payer_id_input}                         ${TIME}
    Input Text                       ${appadmin_page_locators.ny_hut_tax_payer_id_input}                         ${nyHutid}

Fill NY HUT Frequency
    [Arguments]    ${nyHutf}
    Wait Until Element Is Visible    ${appadmin_page_locators.ny_hut_frequency_select}                           ${TIME}
    Select From List By Label        ${appadmin_page_locators.ny_hut_frequency_select}                           ${nyHutf}

Fill KY HUT Tax Payer ID
    [Arguments]    ${kyHutid}
    Wait Until Element Is Visible    ${appadmin_page_locators.ky_hut_tax_payer_id_input}                         ${TIME}
    Input Text                       ${appadmin_page_locators.ky_hut_tax_payer_id_input}                         ${kyHutid}

Fill NM HUT Tax Payer ID
    [Arguments]    ${nmHutid}
    Wait Until Element Is Visible    ${appadmin_page_locators.nm_hut_tax_payer_id_input}                         ${TIME}
    Input Text                       ${appadmin_page_locators.nm_hut_tax_payer_id_input}                         ${nmHutid}

Fill OR HUT Tax Payer ID
    [Arguments]    ${orHutid}
    Wait Until Element Is Visible    ${appadmin_page_locators.or_hut_tax_payer_id_input}                         ${TIME}
    Input Text                       ${appadmin_page_locators.or_hut_tax_payer_id_input}                         ${orHutid}

Fill OR HUT Frequency
    [Arguments]    ${orHutf}
    Wait Until Element Is Visible    ${appadmin_page_locators.or_hut_frequency_select}                           ${TIME}
    Select From List By Label        ${appadmin_page_locators.or_hut_frequency_select}                           ${orHutf}

Fill CT HUT Tax Payer ID
    [Arguments]    ${ctHutid}
    Scroll Element Into View         ${appadmin_page_locators.ct_hut_tax_payer_id_input}
    Wait Until Element Is Visible    ${appadmin_page_locators.ct_hut_tax_payer_id_input}                         ${TIME}
    Input Text                       ${appadmin_page_locators.ct_hut_tax_payer_id_input}                         ${ctHutid}
Assign Available Vehicle 
    [Arguments]    ${vehicle}
    Scroll Element Into View         ${appadmin_page_locators.save_button}
    Wait Until Element Is Visible    ${appadmin_page_locators.search_vehicle_id_left}                            ${TIME}
    Input Text                       ${appadmin_page_locators.search_vehicle_id_left}                            ${vehicle}
    ${XPATH} =    list_xpath.Obtain Xpath By Label Vehicle    ${vehicle}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Remove Vehicle 
    [Arguments]    ${vehicle}
    Scroll Element Into View         ${appadmin_page_locators.save_button}
    Wait Until Element Is Visible    ${appadmin_page_locators.search_vehicle_id_rigth}                           ${TIME}
    Input Text                       ${appadmin_page_locators.search_vehicle_id_rigth}                           ${vehicle}
    ${XPATH} =    list_xpath.Obtain Xpath By Label Vehicle Remove    ${vehicle}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Select Tax Account 
    [Arguments]    ${taxaccount}
    ${XPATH} =    list_xpath.Obtain Xpath By Tax Account    ${taxaccount}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}
    
Company Name Warning Length
    Wait Until Element Is Visible    ${appadmin_page_locators.company_name_length_warning}                       ${TIME}

Street Warning Length 
    Wait Until Element Is Visible    ${appadmin_page_locators.street_length_warning}                             ${TIME}

City Warning Length 
    Wait Until Element Is Visible    ${appadmin_page_locators.city_length_warning}                               ${TIME}

Zip Code Warning Length 
    Wait Until Element Is Visible    ${appadmin_page_locators.zip_code_length_warning}                           ${TIME}

Federal ID Warning Length 
    Wait Until Element Is Visible    ${appadmin_page_locators.federal_id_length_warning}                         ${TIME}

US DOT Warning Length
    Wait Until Element Is Visible    ${appadmin_page_locators.us_dot_number_length_warning}                      ${TIME}

US DOT Number Warning Length 
    Wait Until Element Is Visible    ${appadmin_page_locators.us_dot_number_length_warning}                      ${TIME}

IFTA Account Warning Length
    Scroll Element Into View         ${appadmin_page_locators.ifta_account_length_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_account_length_warning}                       ${TIME}

Fuel Efficiency Min Warning Length
    Scroll Element Into View         ${appadmin_page_locators.fuel_efficiency_min_length_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.fuel_efficiency_min_length_warning}                ${TIME}

Fuel Efficiency Max Warning Length
    Scroll Element Into View         ${appadmin_page_locators.fuel_efficiency_max_length_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.fuel_efficiency_max_length_warning}                ${TIME}

NY HUT Tax Payer Warning Length
    Scroll Element Into View         ${appadmin_page_locators.ny_hut_length_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.ny_hut_length_warning}                             ${TIME}

KY HUT Tax Payer Warning Length
    Scroll Element Into View         ${appadmin_page_locators.ky_hut_length_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.ky_hut_length_warning}                             ${TIME}

NM HUT Tax Payer Warning Length
    Scroll Element Into View         ${appadmin_page_locators.nm_hut_length_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.nm_hut_length_warning}                             ${TIME}
    
OR HUT Tax Payer Warning Length
    Scroll Element Into View         ${appadmin_page_locators.or_hut_length_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.or_hut_length_warning}                             ${TIME}

CT HUT Tax Payer Warning Length
    Scroll Element Into View         ${appadmin_page_locators.ct_hut_length_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.ct_hut_length_warning}                             ${TIME}

Zip Code Invalid Format 
    Wait Until Element Is Visible    ${appadmin_page_locators.zip_code_invalid_format_warning}                   ${TIME}

Required Fields Company Warning 
    Scroll Element Into View         ${appadmin_page_locators.company_name_warning}
    Wait Until Element Is Visible    ${appadmin_page_locators.company_name_warning}                              ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.street_warning}                                    ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.city_warning}                                      ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.zip_code_warning}                                  ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.unit_measure_warning}                              ${TIME}
    
Required Fields Tax Account Inf Warning
    Scroll Element Into View         ${appadmin_page_locators.acceptable_fuel_efficiency_min_label}
    Wait Until Element Is Visible    ${appadmin_page_locators.federal_id_warning}                                ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.ifta_account_warning}                              ${TIME}

Existing Tax Account Error Message 
    Wait Until Element Is Visible    ${appadmin_page_locators.existing_tax_account_error}                        ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.error_message}                                     ${TIME}
    Wait Until Element Is Visible    ${appadmin_page_locators.accept_error_message}                              ${TIME}
   
Generate Random Values   
    ${totalMiles}=    Generate Random String    3    [NUMBERS]
    [Return]    ${totalMiles}

Modify Records per Page
    [Arguments]    ${records}
    Wait Until Element Is Visible    ${appadmin_page_locators.page_select_select}                                ${TIME}
    Select From List By Label        ${appadmin_page_locators.page_select_select}                                ${records}

Search Tax Account 
    [Arguments]    ${companyName}    ${federalIdNumber}    ${dateCreated}
    ${XPATH} =    list_xpath.obtain_xpath_by_filing_row_form    ${companyName}    ${federalIdNumber}    ${dateCreated}
    Scroll Element Into View         ${XPATH}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Obtain Current Date
    ${date} =    Get Current Date    UTC
    ${date} =    list_xpath.obtain_date_correct_format_taxfilings    ${date}
    [Return]    ${date}