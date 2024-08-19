Load Vehicles Page
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_title}                 ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.create_button}                 ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.filter_button}                 ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.pagination_nav}                ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.page_select_select}            ${TIME}

Action Bar should not be visible 
    Element Should Not Be Visible    ${vehicles_page_locators.action_bar}                    ${TIME}

Select First Vehilce on Table 
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_id}                    ${TIME}
    Click Element                    ${vehicles_page_locators.vehicle_id}     

Click Action Bar 
    Wait Until Element Is Visible    ${vehicles_page_locators.action_bar}                    ${TIME}
    Click Element                    ${vehicles_page_locators.action_bar_label_menu}

Show Menu Label
    Wait Until Element Is Visible    ${vehicles_page_locators.menu_label}                    ${TIME}

Search Label
    [Arguments]    ${label}
    Wait Until Element Is Visible    ${vehicles_page_locators.search_label_input}            ${TIME}
    Input Text                       ${vehicles_page_locators.search_label_input}            ${label} 
    ${XPATH} =    list_xpath.obtain_xpath_by_label_name   ${label}
    Wait Until Element Is Visible    ${XPATH}                                                ${TIME} 

Search Label Table 
    [Arguments]    ${label} 
    ${XPATH} =    list_xpath.obtain_xpath_by_label_name   ${label}
    Wait Until Element Is Visible    ${XPATH}                                                ${TIME}

Select Label
    [Arguments]    ${label}
    Wait Until Element Is Visible    ${vehicles_page_locators.search_label_input}            ${TIME}
    Input Text                       ${vehicles_page_locators.search_label_input}            ${label} 
    ${XPATH} =    list_xpath.obtain_xpath_by_label_name   ${label}
    Wait Until Element Is Visible    ${XPATH}                                                ${TIME}       
    Click Element    ${XPATH}
    Click Element                    ${vehicles_page_locators.save_button}                   

Quit Label
    [Arguments]    ${label}
    Wait Until Element Is Visible    ${vehicles_page_locators.search_label_input}            ${TIME}
    Input Text                       ${vehicles_page_locators.search_label_input}            ${label} 
    ${XPATH} =    list_xpath.obtain_xpath_by_label_name   ${label}
    Wait Until Element Is Visible    ${XPATH}                                                ${TIME}       
    Click Element    ${XPATH}
    Click Element    ${XPATH}
    Click Element                    ${vehicles_page_locators.save_button}

Search Vehicle on Table 
    [Arguments]    ${vehicle}
    Sleep                                                   ${SH_TIME}
    ${XPATH} =    list_xpath.obtain_xpath_by_vehicle_name   ${vehicle}
    Scroll Element Into View    ${XPATH}
    [Return]    ${XPATH}

Select Vehicle On Table 
    [Arguments]    ${vehicle}
    Sleep                                                   ${SH_TIME}
    Click Element    ${vehicle}

Load Vehicle Information Page 
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_info_title}            ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.edit_button}                   ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.label_vin}                     ${TIME}
    Wait Until Element Is Visible    ${vehicles_page_locators.vin_input}                     ${TIME}

Click Edit Button 
    Wait Until Element Is Visible    ${vehicles_page_locators.edit_button}                   ${TIME}
    Click Element                    ${vehicles_page_locators.edit_button}

Vin Field should be able to edit 
    Wait Until Element Is Visible    ${vehicles_page_locators.vin_input}                     ${TIME}
    Element Should Be Enabled        ${vehicles_page_locators.vin_input}

Fill Vehicle ID 
    [Arguments]    ${vehicle_id}   
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_id_input}              ${TIME}
    Input Text                       ${vehicles_page_locators.vehicle_id_input}              ${vehicle_id}

Fill VIN 
    [Arguments]    ${vin}   
    Wait Until Element Is Visible    ${vehicles_page_locators.vin_input}                     ${TIME}
    Input Text                       ${vehicles_page_locators.vin_input}                     ${vin}

Fill License Plate
    [Arguments]    ${licensePlate}   
    Wait Until Element Is Visible    ${vehicles_page_locators.license_plate_id_input}        ${TIME}
    Input Text                       ${vehicles_page_locators.license_plate_id_input}        ${licensePlate}       

Fill License Plate State
    [Arguments]    ${licensePlateState}   
    Wait Until Element Is Visible    ${vehicles_page_locators.license_plate_state_id_input}  ${TIME}
    Input Text                       ${vehicles_page_locators.license_plate_state_id_input}  ${licensePlateState}

Fill Engine Hours
    [Arguments]    ${engineHours}   
    Wait Until Element Is Visible    ${vehicles_page_locators.engine_hours_id_input}         ${TIME}
    Input Text                       ${vehicles_page_locators.engine_hours_id_input}         ${engineHours}

Fill State Province
    [Arguments]    ${stateProvince}   
    Wait Until Element Is Visible    ${vehicles_page_locators.state_province_id_input}       ${TIME}
    Input Text                       ${vehicles_page_locators.state_province_id_input}       ${stateProvince}

Fill Country
    [Arguments]    ${country}   
    Wait Until Element Is Visible    ${vehicles_page_locators.country_id_input}              ${TIME}
    Input Text                       ${vehicles_page_locators.country_id_input}              ${country}

Fill Odometer
    [Arguments]    ${odometer}   
    Wait Until Element Is Visible    ${vehicles_page_locators.odometer_id_input}             ${TIME}
    Input Text                       ${vehicles_page_locators.odometer_id_input}             ${odometer}

Fill Odometer Reading Date
    [Arguments]    ${odometerReadingDate}   
    Wait Until Element Is Visible    ${vehicles_page_locators.odometer_reading_date_id_input}             ${TIME}
    Input Text                       ${vehicles_page_locators.odometer_reading_date_id_input}             ${odometerReadingDate}

Fill Odometer Reading Time
    [Arguments]    ${odometerReadingTime}   
    Wait Until Element Is Visible    ${vehicles_page_locators.odometer_reading_time_id_input}             ${TIME}
    Input Text                       ${vehicles_page_locators.odometer_reading_time_id_input}             ${odometerReadingTime}

Fill IFTA Reportable
    [Arguments]    ${IFTAReportable}   
    Wait Until Element Is Visible    ${vehicles_page_locators.IFTA_reportable_id_select}     ${TIME}
    Select From List By Label        ${vehicles_page_locators.IFTA_reportable_id_select}     ${IFTAReportable}

Fill Vehicle Type
    [Arguments]    ${vehicleType}   
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_type_id_select}        ${TIME}
    Select From List By Label        ${vehicles_page_locators.vehicle_type_id_select}        ${vehicleType}

Fill Manufacturer
    [Arguments]    ${manufacturer}   
    Wait Until Element Is Visible    ${vehicles_page_locators.manufacturer_id_input}         ${TIME}
    Input Text                       ${vehicles_page_locators.manufacturer_id_input}         ${manufacturer}

Fill Year
    [Arguments]    ${year}   
    Wait Until Element Is Visible    ${vehicles_page_locators.year_id_input}                 ${TIME}
    Input Text                       ${vehicles_page_locators.year_id_input}                 ${year}

Fill Model
    [Arguments]    ${model}   
    Wait Until Element Is Visible    ${vehicles_page_locators.model_id_input}                ${TIME}
    Input Text                       ${vehicles_page_locators.model_id_input}                ${model}

Fill Manufacturer Date
    [Arguments]    ${manufacturerDate}   
    Wait Until Element Is Visible    ${vehicles_page_locators.manufacturer_date_id_input}    ${TIME}
    Input Text                       ${vehicles_page_locators.manufacturer_date_id_input}    ${manufacturerDate}

Fill Manufacturer Time
    [Arguments]    ${manufacturerTime}   
    Wait Until Element Is Visible    ${vehicles_page_locators.manufacturer_time_id_input}    ${TIME}
    Input Text                       ${vehicles_page_locators.manufacturer_time_id_input}    ${manufacturerTime}

Fill Transmission Manufacturer
    [Arguments]    ${transmissionManufacturer}   
    Wait Until Element Is Visible    ${vehicles_page_locators.transmission_manufacturer_id_input}    ${TIME}
    Input Text                       ${vehicles_page_locators.transmission_manufacturer_id_input}    ${transmissionManufacturer}

Fill Transmission Type
    [Arguments]    ${transmissionType}   
    Wait Until Element Is Visible    ${vehicles_page_locators.transmission_type_id_input}    ${TIME}
    Input Text                       ${vehicles_page_locators.transmission_type_id_input}    ${transmissionType}

Fill Horse Power
    [Arguments]    ${horsePower}   
    Wait Until Element Is Visible    ${vehicles_page_locators.horse_power_id_input}          ${TIME}
    Input Text                       ${vehicles_page_locators.horse_power_id_input}          ${horsePower}

Fill Number of Truck/Tractor Axles
    [Arguments]    ${axles}   
    Wait Until Element Is Visible    ${vehicles_page_locators.number_of_trucktractor_axles_id_input}              ${TIME}
    Input Text                       ${vehicles_page_locators.number_of_trucktractor_axles_id_input}              ${axles}

Fill Unladen Gross Vehicle Weight LBS
    [Arguments]    ${unladenVehicle}   
    Wait Until Element Is Visible    ${vehicles_page_locators.unladen_gross_vehicle_weight_LBS_id_input}         ${TIME}
    Input Text                       ${vehicles_page_locators.unladen_gross_vehicle_weight_LBS_id_input}         ${unladenVehicle}

Fill Registered Laden Gross Vehicle Weight
    [Arguments]    ${ladenVehicle}   
    Wait Until Element Is Visible    ${vehicles_page_locators.registered_laden_gross_vehicle_weight_LBS_id_input}         ${TIME}
    Input Text                       ${vehicles_page_locators.registered_laden_gross_vehicle_weight_LBS_id_input}         ${ladenVehicle}

Fill Fuel Draw Capacity
    [Arguments]    ${fuelDrawCapacity}   
    Wait Until Element Is Visible    ${vehicles_page_locators.fuel_draw_capacity_id_input}    ${TIME}
    Input Text                       ${vehicles_page_locators.fuel_draw_capacity_id_input}    ${fuelDrawCapacity}

Fill Auxillary
    [Arguments]    ${auxillary}   
    Wait Until Element Is Visible    ${vehicles_page_locators.auxillary_id_input}             ${TIME}
    Input Text                       ${vehicles_page_locators.auxillary_id_input}             ${auxillary}

Fill Electric Engine
    [Arguments]    ${electricEngine}   
    Wait Until Element Is Visible    ${vehicles_page_locators.electric_engine_id_select}      ${TIME}
    Select From List By Label        ${vehicles_page_locators.electric_engine_id_select}      ${electricEngine}

Fill Berth
    [Arguments]    ${berth}   
    Wait Until Element Is Visible    ${vehicles_page_locators.berth_id_select}                ${TIME}
    Select From List By Label        ${vehicles_page_locators.berth_id_select}                ${berth}

Fill Leased
    [Arguments]    ${leased}   
    Wait Until Element Is Visible    ${vehicles_page_locators.leased_id_select}               ${TIME}
    Select From List By Label        ${vehicles_page_locators.leased_id_select}               ${leased}

Fill Vehicle Status
    [Arguments]    ${vehicleStatus}   
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicle_status_id_select}       ${TIME}
    Select From List By Label        ${vehicles_page_locators.vehicle_status_id_select}       ${vehicleStatus}

Fill Start Date
    [Arguments]    ${startDate}   
    Wait Until Element Is Visible    ${vehicles_page_locators.start_date_id_input}            ${TIME}
    Input Text                       ${vehicles_page_locators.start_date_id_input}            ${startDate}

Fill Start Time
    [Arguments]    ${startTime}   
    Wait Until Element Is Visible    ${vehicles_page_locators.start_time_id_input}            ${TIME}
    Input Text                       ${vehicles_page_locators.start_time_id_input}            ${startTime}

Fill Termination Time
    [Arguments]    ${terminationTime}   
    Wait Until Element Is Visible    ${vehicles_page_locators.termination_time_id_input}      ${TIME}
    Input Text                       ${vehicles_page_locators.termination_time_id_input}      ${terminationTime}

Fill Termination Date
    [Arguments]    ${terminationDate}   
    Wait Until Element Is Visible    ${vehicles_page_locators.termination_date_id_input}      ${TIME}
    Input Text                       ${vehicles_page_locators.termination_date_id_input}      ${terminationDate}

Fill Owner Operator Name
    [Arguments]    ${ownerOperatorName}   
    Wait Until Element Is Visible    ${vehicles_page_locators.owner_operator_name_If_Applicable_id_input}      ${TIME}
    Input Text                       ${vehicles_page_locators.owner_operator_name_If_Applicable_id_input}      ${ownerOperatorName}

Fill Unladen Trailer Gross Weight
    [Arguments]    ${unladenTrailer}   
    Wait Until Element Is Visible    ${vehicles_page_locators.unladen_trailer_gross_weight_LBS_id_input}      ${TIME}
    Input Text                       ${vehicles_page_locators.unladen_trailer_gross_weight_LBS_id_input}      ${unladenTrailer}

Fill Fuel Type
    [Arguments]    ${fuelType}   
    Wait Until Element Is Visible    ${vehicles_page_locators.fuel_type_id_select}            ${TIME}
    Select From List By Label        ${vehicles_page_locators.fuel_type_id_select}            ${fuelType}

Fill Number of Combined Vehicle Axles
    [Arguments]    ${combinedAxless}   
    Wait Until Element Is Visible    ${vehicles_page_locators.number_of_combined_vehicle_axles_id_input}        ${TIME}
    Input Text                       ${vehicles_page_locators.number_of_combined_vehicle_axles_id_input}        ${combinedAxless}

Fill NY HUT Permit 
    [Arguments]    ${nyHut}   
    Wait Until Element Is Visible    ${vehicles_page_locators.NY_HUT_permit_id_input}        ${TIME}
    Input Text                       ${vehicles_page_locators.NY_HUT_permit_id_input}        ${nyHut}

Fill IFTA Decal 1 
    [Arguments]    ${IFTADecal1}   
    Wait Until Element Is Visible    ${vehicles_page_locators.IFTA_decal_1_id_input}          ${TIME}
    Input Text                       ${vehicles_page_locators.IFTA_decal_1_id_input}          ${IFTADecal1}

Fill IFTA Decal 2 
    [Arguments]    ${IFTADecal2}   
    Wait Until Element Is Visible    ${vehicles_page_locators.IFTA_decal_2_id_input}          ${TIME}
    Input Text                       ${vehicles_page_locators.IFTA_decal_2_id_input}          ${IFTADecal2}

Click Create Button 
    Wait Until Element Is Visible    ${vehicles_page_locators.create_button}                  ${TIME}
    Click Element                    ${vehicles_page_locators.create_button}

Click Save Button
    Wait Until Element Is Visible    ${vehicles_page_locators.save_button}                    ${TIME}
    Click Element                    ${vehicles_page_locators.save_button}

Required Fields Warnigns  
    Element Should Be Visible    ${vehicles_page_locators.vehicle_id_warning}                              ${TIME}
    Element Should Be Visible    ${vehicles_page_locators.vehicle_type_warning}                            ${TIME}
    Element Should Be Visible    ${vehicles_page_locators.unladen_trailer_gross_warning}                   ${TIME}
    Element Should Be Visible    ${vehicles_page_locators.number_of_combined_axles_id_warning}             ${TIME}

Obtain Vin generate
    ${vin}=    vin_generator.Generar Vin
    [Return]    ${vin}

Generate Random Values   
    ${totalMiles}=    Generate Random String    4    [NUMBERS]
    [Return]    ${totalMiles}

Click On Vehicle Filter 
    Wait Until Element Is Visible    ${vehicles_page_locators.filter_button}                 ${TIME}
    Click Element                    ${vehicles_page_locators.filter_button}

Click On Vehicles List
    Wait Until Element Is Visible    ${vehicles_page_locators.vehicles_filter}               ${TIME}
    Click Element                    ${vehicles_page_locators.vehicles_filter}
    Wait Until Element Is Visible    ${vehicles_page_locators.search_input_text_filter}      ${TIME}

Search By Vehicles
    [Arguments]    ${vehicles}
    Wait Until Element Is Visible    ${vehicles_page_locators.all_vehicles_checkbox_filter}    ${TIME}
    Click Element                    ${vehicles_page_locators.all_vehicles_checkbox_filter}
    Wait Until Element Is Visible    ${vehicles_page_locators.search_input_text_filter}        ${TIME}
    Input Text                       ${vehicles_page_locators.search_input_text_filter}        ${vehicles}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${vehicles}
    Wait Until Element Is Visible    ${XPATH}         ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}
    Click Element                    ${vehicles_page_locators.vehicles_filter}

Click On Generate Button
    Wait Until Element Is Visible    ${vehicles_page_locators.generate_button_filter}        ${TIME}
    Scroll Element Into View         ${vehicles_page_locators.generate_button_filter}
    Click Element                    ${vehicles_page_locators.generate_button_filter}
    Sleep    ${SH_TIME}
    Click Element                    ${vehicles_page_locators.generate_button_filter}

Click On Close Button From Filter
    Wait Until Element Is Visible    ${vehicles_page_locators.close_filter_button}                ${TIME}
    Click Element                    ${vehicles_page_locators.close_filter_button}

Search By Vehicle on Table
    [Arguments]    ${vehicle}
    ${XPATH} =    list_xpath.obtain_xpath_by_vehicle_row    ${vehicle}
    Wait Until Element Is Visible    ${XPATH}         ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}

Invalid Vin Format Warning
    Element Should Be Visible    ${vehicles_page_locators.vin_invalid_format_warning}                              ${TIME}

Delete Default Values
    Wait Until Element Is Visible    ${vehicles_page_locators.number_of_trucktractor_axles_id_input}                ${TIME}
    Press Keys                        ${vehicles_page_locators.number_of_trucktractor_axles_id_input}                Delete
    Wait Until Element Is Visible    ${vehicles_page_locators.unladen_gross_vehicle_weight_LBS_id_input}            ${TIME}
    Press Keys                        ${vehicles_page_locators.unladen_gross_vehicle_weight_LBS_id_input}            Delete
    Wait Until Element Is Visible    ${vehicles_page_locators.registered_laden_gross_vehicle_weight_LBS_id_input}   ${TIME}
    Press Keys                        ${vehicles_page_locators.registered_laden_gross_vehicle_weight_LBS_id_input}   Delete

Warning For Deleted Default Values
    Element Should Be Visible    ${vehicles_page_locators.number_of_trucktractor_axles_warning}                ${TIME}
    Element Should Be Visible    ${vehicles_page_locators.unladen_gross_vehicle_weight_warning}                 ${TIME}
    Element Should Be Visible    ${vehicles_page_locators.registered_laden_gross_vehicle_weight_warning}        ${TIME}

Engine Hours Warning Length
    Wait Until Element Is Visible    ${vehicles_page_locators.engine_hours_length_warning}                ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.engine_hours_length_warning}                ${TIME}

Odometer Warning Length    
    Wait Until Element Is Visible    ${vehicles_page_locators.odometer_length_warning}                ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.odometer_length_warning}                ${TIME}

Year Warning Length
    Wait Until Element Is Visible    ${vehicles_page_locators.year_length_warning}                ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.year_length_warning}                ${TIME}

Horse Power Warning Length
    Wait Until Element Is Visible    ${vehicles_page_locators.horse_power_length_warning}                ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.horse_power_length_warning}                ${TIME}

Number of TruckTractor Axles Warning Length
    Wait Until Element Is Visible    ${vehicles_page_locators.number_of_truck_tractor_axles_length_warning}                ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.number_of_truck_tractor_axles_length_warning}                ${TIME}

Unladen Gross Vehicle Weight Warning Length
    Wait Until Element Is Visible    ${vehicles_page_locators.unladen_gross_vehicle_weight_length_warning}                 ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.unladen_gross_vehicle_weight_length_warning}                 ${TIME}

Registered Laden Gross Vehicle Weight Warning Length    
    Wait Until Element Is Visible    ${vehicles_page_locators.registered_gross_vehicle_length_warning}                     ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.registered_gross_vehicle_length_warning}                     ${TIME}

Fuel Draw Capacity Warning Length
    Wait Until Element Is Visible    ${vehicles_page_locators.fuel_draw_capacity_length_warning}                           ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.fuel_draw_capacity_length_warning}                           ${TIME}

Unladen Trailer Gross Weight Warning Length    
    Wait Until Element Is Visible    ${vehicles_page_locators.unladen_trailer_gross_weight_length_warning}                 ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.unladen_trailer_gross_weight_length_warning}                 ${TIME}

Number of Combined Vehicle Axles Warning Length
    Wait Until Element Is Visible    ${vehicles_page_locators.number_of_combined_vehicle_axles_length_warning}             ${TIME}
    Element Should Be Visible        ${vehicles_page_locators.number_of_combined_vehicle_axles_length_warning}             ${TIME}

Engine Hours no Warning Length
    Element Should Not Be Visible    ${vehicles_page_locators.engine_hours_length_warning}                ${TIME}

Odometer no Warning Length    
    Element Should Not Be Visible        ${vehicles_page_locators.odometer_length_warning}                ${TIME}
    

Year no Warning Length
    Element Should Not Be Visible        ${vehicles_page_locators.year_length_warning}                ${TIME}

Horse Power no Warning Length
    Element Should Not Be Visible        ${vehicles_page_locators.horse_power_length_warning}                ${TIME}

Number of TruckTractor Axles no Warning Length
    Element Should Not Be Visible        ${vehicles_page_locators.number_of_truck_tractor_axles_length_warning}                ${TIME}

Unladen Gross Vehicle Weight no Warning Length
    Element Should Not Be Visible        ${vehicles_page_locators.unladen_gross_vehicle_weight_length_warning}                 ${TIME}

Registered Laden Gross Vehicle Weight no Warning Length    
    Element Should Not Be Visible        ${vehicles_page_locators.registered_gross_vehicle_length_warning}                     ${TIME}

Fuel Draw Capacity no Warning Length
    Element Should Not Be Visible        ${vehicles_page_locators.fuel_draw_capacity_length_warning}                           ${TIME}

Unladen Trailer Gross Weight no Warning Length    
    Element Should Not Be Visible        ${vehicles_page_locators.unladen_trailer_gross_weight_length_warning}                 ${TIME}

Number of Combined Vehicle Axles no Warning Length
    Element Should Not Be Visible        ${vehicles_page_locators.number_of_combined_vehicle_axles_length_warning}             ${TIME}