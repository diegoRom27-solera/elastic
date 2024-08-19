
Load App Launcher Home Page
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_left}         ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.home_button_left}              ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.assets_button_left}            ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_left}        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_left}         ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_left}       ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.safety_button_left}            ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.administration_button_left}    ${TIME}
    # Wait Until Element Is Visible    ${app_launcher_locators.system_console_button_left}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_main}         ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.all_apps_button_main}          ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_main}        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_main}         ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_main}       ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.safety_button_main}            ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.administration_button_main}    ${TIME}
    # Wait Until Element Is Visible    ${app_launcher_locators.system_button_main}            ${TIME}

Load All Apps
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_mainenance_app}          ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_history_app}             ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.certify_repair_app}                ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.mobile_device_diagnostics_app}     ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.telematics_diagnostics_app}        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.driver_log_editor_app}             ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.unassigned_vehicle_activ_app}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_assign_fuel_purchases_app}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_fuel_receipts_app}     ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_man_distance_app}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.fleetview_app}                     ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.order_status_app}                  ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.service_history_app}               ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.map_editor_app}                    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.modeling_app}                      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.service_pattern_analyzer_app}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.stop_analyzer_app}                 ${TIME} 
    Wait Until Element Is Visible    ${app_launcher_locators.insight_app}                       ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.scorecard_app}                     ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.reporting_app}                     ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.safety_app}                        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.business_account_app}              ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.device_manager_app}                ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.onboarding_app}                    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.sku_app}                           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.mdm_profile_app}                   ${TIME}

Refresh Page
    Execute Javascript    window.location.reload(true)

Click On Sign Out Button
    Wait Until Element Is Visible    ${app_launcher_locators.sign_out_button}    ${TIME}
    Click Element                    ${app_launcher_locators.sign_out_button}

Verify That Sign Out Button Is Displayed
    Wait Until Element Is Visible    ${app_launcher_locators.sign_out_button}    ${TIME}

Click On Change Password Button
    Wait Until Element Is Visible    ${app_launcher_locators.change_password_button}    ${TIME}
    Click Element                    ${app_launcher_locators.change_password_button}

Verify That Change Password Button Is Displayed
    Wait Until Element Is Visible    ${app_launcher_locators.change_password_button}    ${TIME}

Click On Terms Button
    Wait Until Element Is Visible    ${app_launcher_locators.terms_button}    ${TIME}
    Click Element                    ${app_launcher_locators.terms_button}

Click On Privacy Button
    Wait Until Element Is Visible    ${app_launcher_locators.privacy_button}    ${TIME}
    Click Element                    ${app_launcher_locators.privacy_button}

Verify Privacy Policy Button Is Displayed
    Wait Until Element Is Visible    ${app_launcher_locators.privacy_button}    ${TIME}

Verify That User Privacy Policy Page Is Displayed
    Wait Until Element Is Visible    ${app_launcher_locators.introduction_title_privacy}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.collection_title_privacy}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.data_security_title_privacy}   ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.contact_info_title_privacy}    ${TIME}

Verify App Launcher Version Is Displayed
    Wait Until Element Is Visible    ${app_launcher_locators.app_launcher_version}    ${TIME}

Verify User Account Label
    Wait Until Element Is Visible    ${app_launcher_locators.app_launcher_user_label}    ${TIME}

Verify That Initials Are Displayed In The User Avatar
    [Arguments]    ${user}
    ${XPATH} =    list_xpath.Obtain Xpath Initals User Name    ${user}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

Mouse Over On Home Menu
    Wait Until Element Is Visible    ${app_launcher_locators.home_button_left}               ${TIME}
    Mouse Over                       ${app_launcher_locators.home_button_left}
    # Wait Until Element Is Visible    ${app_launcher_locators.home_button_left_focus}         ${TIME}

Mouse Over On User Avatar
    [Arguments]    ${user}
    ${XPATH} =    list_xpath.Obtain Xpath Initals User Name    ${user}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Mouse Over                       ${XPATH}

Click On User Avatar
    [Arguments]    ${user}
    ${XPATH} =    list_xpath.Obtain Xpath Initals User Name    ${user}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Verify Flyout User Information
    [Arguments]    ${user}    ${name}
    ${XPATH} =    list_xpath.Obtain Xpath Mail Address Information    ${user}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Name Information    ${name}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.sign_out_button}    ${TIME}

Verify That The Tooltip Is Displayed
    Wait Until Element Is Visible    ${app_launcher_locators.home_tooltip_left}              ${TIME}

Verify That The Tooltip Is Displayed From User Avatar
    [Arguments]    ${company}
    ${XPATH} =    list_xpath.Obtain Xpath Tooltip Avatar    ${company}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

#Mouse Over
Mouse Over On Favorites Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_left}          ${TIME}
    Mouse Over                       ${app_launcher_locators.favorites_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_left_focus}    ${TIME}

Click On Favorites Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_main}          ${TIME}
    Click Element                    ${app_launcher_locators.favorites_button_main}

Verify That Favorites Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_main_active}    ${TIME}

Verify That Favorite Outline Icon Is Displayed
    Wait Until Element Is Visible    ${app_launcher_locators.outline_icon_favorites}          ${TIME}

Click On Home Menu
    Wait Until Element Is Visible    ${app_launcher_locators.home_button_left}               ${TIME}
    Click Element                    ${app_launcher_locators.home_button_left}

Click On All Apps Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.all_apps_button_main}           ${TIME}
    Click Element                    ${app_launcher_locators.all_apps_button_main}

Verify That All Apps Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.all_apps_button_main_active}     ${TIME}

Verify That Active Class In Home Appears From Home Page
    Wait Until Element Is Visible    ${app_launcher_locators.home_button_left_focus}         ${TIME}

Click On Assets Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.assets_button_main}             ${TIME}
    Click Element                    ${app_launcher_locators.assets_button_main}

Verify That Assets Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.assets_button_main_active}     ${TIME}

Mouse Over On Assets Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.assets_button_left}           ${TIME}
    Mouse Over                       ${app_launcher_locators.assets_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.assets_button_left_focus}     ${TIME}

Mouse Over On Assets Left Button When It Is Actived
    Wait Until Element Is Visible    ${app_launcher_locators.assets_button_left}           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.assets_button_left_active}    ${TIME}
    Mouse Over                       ${app_launcher_locators.assets_button_left}
    
Mouse Over On Assets Flyout
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_mainenance_sidebar}      ${TIME}
    Mouse Over                       ${app_launcher_locators.equipment_mainenance_sidebar}
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_history_sidebar}         ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.certify_repair_sidebar}            ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.mobile_device_diag_sidebar}        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.telematics_diagnostics_sidebar}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.fleetlocate_trailer_sidebar}       ${TIME}

Click On Compliance Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_main}            ${TIME}
    Click Element                    ${app_launcher_locators.compliance_button_main}

Verify That Compliance Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_main_active}             ${TIME}

Mouse Over On Compliance Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_left}           ${TIME}
    Mouse Over                       ${app_launcher_locators.compliance_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_left_focus}     ${TIME}

Mouse Over On Compliance Left Button When It Is Actived
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_left}           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_left_active}    ${TIME}
    Mouse Over                       ${app_launcher_locators.compliance_button_left}

Mouse Over On Compliance Flyout
    Wait Until Element Is Visible    ${app_launcher_locators.driver_log_editor_sidebar}           ${TIME}
    Mouse Over                       ${app_launcher_locators.driver_log_editor_sidebar}
    Wait Until Element Is Visible    ${app_launcher_locators.unassigned_vehicle_activ_sidebar}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_assign_fuel_pur_sidebar}        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_fuel_rec_sidebar}        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_manual_dis_sidebar}      ${TIME}

Click On Logistics Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_main}            ${TIME}
    Click Element                    ${app_launcher_locators.logistics_button_main}

Verify That Logistics Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_main_active}             ${TIME}

Mouse Over On Logistics Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_left}           ${TIME}
    Mouse Over                       ${app_launcher_locators.logistics_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_left_focus}     ${TIME}

Mouse Over On Logistics Left Button When It Is Actived
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_left}           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_left_active}    ${TIME}
    Mouse Over                       ${app_launcher_locators.logistics_button_left}

Mouse Over On Logistics Flyout
    Wait Until Element Is Visible    ${app_launcher_locators.fleetview_sidebar}               ${TIME}
    Mouse Over                       ${app_launcher_locators.fleetview_sidebar}
    Wait Until Element Is Visible    ${app_launcher_locators.order_status_sidebar}            ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.service_history_sidebar}         ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.modeling_sidebar}                ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.service_pattern_anal_sidebar}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.stop_analyzer_sidebar}           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.map_editor_sidebar}              ${TIME}

Click On Performance Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_main}            ${TIME}
    Click Element                    ${app_launcher_locators.performance_button_main}

Verify That Performance Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_main_active}             ${TIME}

Mouse Over On Performance Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_left}           ${TIME}
    Mouse Over                       ${app_launcher_locators.performance_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_left_focus}     ${TIME}

Mouse Over On Performance Left Button When It Is Actived
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_left}           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_left_active}    ${TIME}
    Mouse Over                       ${app_launcher_locators.performance_button_left}

Mouse Over On Performance Flyout
    Wait Until Element Is Visible    ${app_launcher_locators.insight_sidebar}      ${TIME}
    Mouse Over                       ${app_launcher_locators.insight_sidebar}
    Wait Until Element Is Visible    ${app_launcher_locators.scorecard_sidebar}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.reporting_sidebar}    ${TIME}

Click On Safety Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.safety_button_main}            ${TIME}
    Click Element                    ${app_launcher_locators.safety_button_main}

Verify That Safety Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.safety_button_main_active}             ${TIME}

Mouse Over On Safety Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.safety_button_left}           ${TIME}
    Mouse Over                       ${app_launcher_locators.safety_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.safety_left_focus}            ${TIME}

Mouse Over On Safety Left Button When It Is Actived
    Wait Until Element Is Visible    ${app_launcher_locators.safety_button_left}           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.safety_left_active}           ${TIME}
    Mouse Over                       ${app_launcher_locators.safety_button_left}

Mouse Over On Safety Flyout
    Wait Until Element Is Visible    ${app_launcher_locators.safety_app}                   ${TIME}
    Mouse Over                       ${app_launcher_locators.safety_app}
    Wait Until Element Is Visible    ${app_launcher_locators.driver_app_sidebar}           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.response_center_sidebar}      ${TIME}

Click On Administration Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.administration_button_main}            ${TIME}
    Click Element                    ${app_launcher_locators.administration_button_main}

Verify That Administration Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.admin_button_main_active}             ${TIME}

Mouse Over On Administration Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.administration_button_left}       ${TIME}
    Mouse Over                       ${app_launcher_locators.administration_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.admin_button_left_focus}          ${TIME}

Mouse Over On Administration Left Button When It Is Actived
    Wait Until Element Is Visible    ${app_launcher_locators.administration_button_left}       ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.admin_button_left_active}         ${TIME}
    Mouse Over                       ${app_launcher_locators.administration_button_left}

Mouse Over On Administration Flyout
    Wait Until Element Is Visible    ${app_launcher_locators.command_sidebar}                  ${TIME}
    Mouse Over                       ${app_launcher_locators.command_sidebar}
    Wait Until Element Is Visible    ${app_launcher_locators.rna_mobile_workflow_sidebar}      ${TIME}

Click On System Console Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.system_button_main}            ${TIME}
    Click Element                    ${app_launcher_locators.system_button_main}

Verify That System Console Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.system_button_main_active}             ${TIME}

Mouse Over On System Console Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.system_console_button_left}           ${TIME}
    Mouse Over                       ${app_launcher_locators.system_console_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.system_console_left_focus}     ${TIME}

Mouse Over On System Console Flyout
    Wait Until Element Is Visible    ${app_launcher_locators.business_account_sidebar}      ${TIME}
    Mouse Over                       ${app_launcher_locators.business_account_sidebar}
    Wait Until Element Is Visible    ${app_launcher_locators.device_manager_sidebar}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.onboarding_sidebar}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.sku_entitlements_sidebar}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.support_tools_sidebar}      ${TIME}

#Farms
Click On Favorite Icon From An App
    [Arguments]    ${app}
    ${XPATH} =    list_xpath.Obatin Xpath Fav Icon App    ${app}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Sleep    ${MC_TIME}
    Click Element                    ${XPATH}

Load Favorites Page When There Are No Favorite Apps
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.favorite_title_message}          ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.favorite_description_message}    ${TIME}

Load Favorites Flyout When There Are No Favorite Apps
    Wait Until Element Is Visible    ${app_launcher_locators.favorite_empty_sidebar_message}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.favorite_des_sidebar_message}      ${TIME}

Validate Deep Link
    [Arguments]    ${deep_link_1}    ${deep_link_2}
    IF    '${deep_link_1}' == '${deep_link_2}'
        Log    The deep link is correct
    ELSE
        Fail
    END

#Click on App Card
Click On Equipment Maintenance Planning Card
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_mainenance_app}         ${TIME}
    Click Element                    ${app_launcher_locators.equipment_mainenance_app}

Click On Equipment History Card
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_history_app}            ${TIME}
    Click Element                    ${app_launcher_locators.equipment_history_app}

Click On Certify Repair Card
    Wait Until Element Is Visible    ${app_launcher_locators.certify_repair_app}               ${TIME}
    Click Element                    ${app_launcher_locators.certify_repair_app}

Click On Mobile Device Diagnostics Card
    Wait Until Element Is Visible    ${app_launcher_locators.mobile_device_diagnostics_app}    ${TIME}
    Click Element                    ${app_launcher_locators.mobile_device_diagnostics_app}

Click On Telematics Diagnostics Card
    Wait Until Element Is Visible    ${app_launcher_locators.telematics_diagnostics_app}       ${TIME}
    Click Element                    ${app_launcher_locators.telematics_diagnostics_app}

Click On FleetLocate Trailer Card
    Wait Until Element Is Visible    ${app_launcher_locators.fleetlocate_trailer_app}          ${TIME}
    Click Element                    ${app_launcher_locators.fleetlocate_trailer_app}

Click On Driver Log Editor Card
    Wait Until Element Is Visible    ${app_launcher_locators.driver_log_editor_app}            ${TIME}
    Click Element                    ${app_launcher_locators.driver_log_editor_app}

Click On Unassigned Vehicle Activity Card
    Wait Until Element Is Visible    ${app_launcher_locators.unassigned_vehicle_activ_app}     ${TIME}
    Click Element                    ${app_launcher_locators.unassigned_vehicle_activ_app}

Click On IFTA Assign Fuel Purchases Card
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_assign_fuel_purchases_app}    ${TIME}
    Click Element                    ${app_launcher_locators.ifta_assign_fuel_purchases_app}

Click On IFTA Manage Fuel Receipts Card
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_fuel_receipts_app}    ${TIME}
    Click Element                    ${app_launcher_locators.ifta_manage_fuel_receipts_app}

Click On IFTA Manage Manual Distance Card
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_man_distance_app}     ${TIME}
    Click Element                    ${app_launcher_locators.ifta_manage_man_distance_app}

Click On Fleetview Card
    Wait Until Element Is Visible    ${app_launcher_locators.fleetview_app}                    ${TIME}
    Click Element                    ${app_launcher_locators.fleetview_app}

Click On Order Status Card
    Wait Until Element Is Visible    ${app_launcher_locators.order_status_app}                 ${TIME}
    Click Element                    ${app_launcher_locators.order_status_app}

Click On Service History Card
    Wait Until Element Is Visible    ${app_launcher_locators.service_history_app}              ${TIME}
    Click Element                    ${app_launcher_locators.service_history_app}

Click On Modeling Card
    Wait Until Element Is Visible    ${app_launcher_locators.modeling_app}                     ${TIME}
    Click Element                    ${app_launcher_locators.modeling_app}

Click On Service Pattern Analyzer Card
    Wait Until Element Is Visible    ${app_launcher_locators.service_pattern_analyzer_app}     ${TIME}
    Click Element                    ${app_launcher_locators.service_pattern_analyzer_app}

Click On Stop Analyzer Card
    Wait Until Element Is Visible    ${app_launcher_locators.stop_analyzer_app}                ${TIME}
    Click Element                    ${app_launcher_locators.stop_analyzer_app}

Click On Travel Path Estimator Card
    Wait Until Element Is Visible    ${app_launcher_locators.travel_path_app}                  ${TIME}
    Click Element                    ${app_launcher_locators.travel_path_app}

Click On Map Editor Card
    Wait Until Element Is Visible    ${app_launcher_locators.map_editor_app}                   ${TIME}
    Click Element                    ${app_launcher_locators.map_editor_app}

Click On Insight Card
    Wait Until Element Is Visible    ${app_launcher_locators.insight_app}                      ${TIME}
    Click Element                    ${app_launcher_locators.insight_app}

Click On Scorecard Card
    Wait Until Element Is Visible    ${app_launcher_locators.scorecard_app}                    ${TIME}
    Click Element                    ${app_launcher_locators.scorecard_app}

Click On Performance Monitoring Card
    Wait Until Element Is Visible    ${app_launcher_locators.performance_monitoring_app}       ${TIME}
    Click Element                    ${app_launcher_locators.performance_monitoring_app}

Click On Reporting Card
    Wait Until Element Is Visible    ${app_launcher_locators.reporting_app}                    ${TIME}
    Click Element                    ${app_launcher_locators.reporting_app}

Click On Safety Card
    Wait Until Element Is Visible    ${app_launcher_locators.safety_app}                       ${TIME}
    Scroll Element Into View         ${app_launcher_locators.safety_app}
    Click Element                    ${app_launcher_locators.safety_app}

Click On Driver App Card
    Wait Until Element Is Visible    ${app_launcher_locators.driver_app}                       ${TIME}
    Scroll Element Into View         ${app_launcher_locators.driver_app}
    Click Element                    ${app_launcher_locators.driver_app}

Click On Response Center Card
    Wait Until Element Is Visible    ${app_launcher_locators.reponse_center_app}              ${TIME}
    Scroll Element Into View         ${app_launcher_locators.reponse_center_app}
    Click Element                    ${app_launcher_locators.reponse_center_app}

Click On Drive Workflow Card
    Wait Until Element Is Visible    ${app_launcher_locators.drive_workflow_app}               ${TIME}
    Click Element                    ${app_launcher_locators.drive_workflow_app}

Click On Mobile Workflow Card
    Wait Until Element Is Visible    ${app_launcher_locators.rna_mobile_workflow_app}          ${TIME}
    Scroll Element Into View         ${app_launcher_locators.rna_mobile_workflow_app}
    Click Element                    ${app_launcher_locators.rna_mobile_workflow_app}

Click On Business Account Card
    Wait Until Element Is Visible    ${app_launcher_locators.business_account_app}             ${TIME}
    Click Element                    ${app_launcher_locators.business_account_app}

Click On Device Manager Card
    Wait Until Element Is Visible    ${app_launcher_locators.device_manager_app}               ${TIME}
    Click Element                    ${app_launcher_locators.device_manager_app}

Click On Onboarding Card
    Wait Until Element Is Visible    ${app_launcher_locators.onboarding_app}                   ${TIME}
    Click Element                    ${app_launcher_locators.onboarding_app}

Click On SKU And Entitlements Card
    Wait Until Element Is Visible    ${app_launcher_locators.sku_entitlements_app}             ${TIME}
    Click Element                    ${app_launcher_locators.sku_entitlements_app}

Click On Support Tools Card
    Wait Until Element Is Visible    ${app_launcher_locators.support_tools_app}                ${TIME}
    Click Element                    ${app_launcher_locators.support_tools_app}

Click On Command Card
    Wait Until Element Is Visible    ${app_launcher_locators.command_app}                     ${TIME}
    Scroll Element Into View         ${app_launcher_locators.command_app}
    Click Element                    ${app_launcher_locators.command_app}

#Click on App option from Flyout
Click On Certify Repair Option
    Wait Until Element Is Visible    ${app_launcher_locators.certify_repair_sidebar}            ${TIME}
    Click Element                    ${app_launcher_locators.certify_repair_sidebar}

Click On Equipment Maintenance Planning Option
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_mainenance_sidebar}      ${TIME}
    Click Element                    ${app_launcher_locators.equipment_mainenance_sidebar}

Click On Equipment Maintenance Planing Option
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_mainenance_sidebar}      ${TIME}
    Click Element                    ${app_launcher_locators.equipment_mainenance_sidebar}

Click On Equipment History Option
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_history_sidebar}         ${TIME}
    Click Element                    ${app_launcher_locators.equipment_history_sidebar}

Click On Certify Report Option
    Wait Until Element Is Visible    ${app_launcher_locators.certify_repair_sidebar}            ${TIME}
    Click Element                    ${app_launcher_locators.certify_repair_sidebar}

Click On FleetLocate Trailer Option
    Wait Until Element Is Visible    ${app_launcher_locators.fleetlocate_trailer_sidebar}       ${TIME}
    Click Element                    ${app_launcher_locators.fleetlocate_trailer_sidebar}

Click On Mobile Device Diagnostics Option
    Wait Until Element Is Visible    ${app_launcher_locators.mobile_device_diag_sidebar}        ${TIME}
    Click Element                    ${app_launcher_locators.mobile_device_diag_sidebar}

Click On Telematics Diagnostics Option
    Wait Until Element Is Visible    ${app_launcher_locators.telematics_diagnostics_sidebar}    ${TIME}
    Click Element                    ${app_launcher_locators.telematics_diagnostics_sidebar}

Click On Driver Log Editor Option
    Wait Until Element Is Visible    ${app_launcher_locators.driver_log_editor_sidebar}         ${TIME}
    Click Element                    ${app_launcher_locators.driver_log_editor_sidebar}

Click On Unassigned Vehicle Activity Option
    Wait Until Element Is Visible    ${app_launcher_locators.unassigned_vehicle_activ_sidebar}  ${TIME}
    Click Element                    ${app_launcher_locators.unassigned_vehicle_activ_sidebar}

Click On IFTA Assign Fuel Purchases Option
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_assign_fuel_pur_sidebar}      ${TIME}
    Click Element                    ${app_launcher_locators.ifta_assign_fuel_pur_sidebar}

Click On IFTA Manage Fuel Receipts Option
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_fuel_rec_sidebar}       ${TIME}
    Click Element                    ${app_launcher_locators.ifta_manage_fuel_rec_sidebar}

Click On IFTA Manage Manual Distance Option
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_manual_dis_sidebar}     ${TIME}
    Click Element                    ${app_launcher_locators.ifta_manage_manual_dis_sidebar}

Click On Fleetview Option
    Wait Until Element Is Visible    ${app_launcher_locators.fleetview_sidebar}                 ${TIME}
    Click Element                    ${app_launcher_locators.fleetview_sidebar}

Click On Order Status Option
    Wait Until Element Is Visible    ${app_launcher_locators.order_status_sidebar}              ${TIME}
    Click Element                    ${app_launcher_locators.order_status_sidebar}

Click On Service History Option
    Wait Until Element Is Visible    ${app_launcher_locators.service_history_sidebar}           ${TIME}
    Click Element                    ${app_launcher_locators.service_history_sidebar}

Click On Map Editor Option
    Wait Until Element Is Visible    ${app_launcher_locators.map_editor_sidebar}                ${TIME}
    Click Element                    ${app_launcher_locators.map_editor_sidebar}

Click On Modeling Option
    Wait Until Element Is Visible    ${app_launcher_locators.modeling_sidebar}                  ${TIME}
    Click Element                    ${app_launcher_locators.modeling_sidebar}

Click On Service Pattern Analyzer Option
    Wait Until Element Is Visible    ${app_launcher_locators.service_pattern_anal_sidebar}      ${TIME}
    Click Element                    ${app_launcher_locators.service_pattern_anal_sidebar}

Click On Stop Analyzer Option
    Wait Until Element Is Visible    ${app_launcher_locators.stop_analyzer_sidebar}             ${TIME}
    Click Element                    ${app_launcher_locators.stop_analyzer_sidebar}

Click On Travel Path Estimator Option
    Wait Until Element Is Visible    ${app_launcher_locators.travel_path_sidebar}               ${TIME}
    Click Element                    ${app_launcher_locators.travel_path_sidebar}

Click On Insight Option
    Wait Until Element Is Visible    ${app_launcher_locators.insight_sidebar}                   ${TIME}
    Click Element                    ${app_launcher_locators.insight_sidebar}

Click On Scorecard Option
    Wait Until Element Is Visible    ${app_launcher_locators.scorecard_sidebar}                 ${TIME}
    Click Element                    ${app_launcher_locators.scorecard_sidebar}

Click On Performance Monitoring Option
    Wait Until Element Is Visible    ${app_launcher_locators.performance_monitoring_sidebar}    ${TIME}
    Click Element                    ${app_launcher_locators.performance_monitoring_sidebar}

Click On Reporting Option
    Wait Until Element Is Visible    ${app_launcher_locators.reporting_sidebar}                 ${TIME}
    Click Element                    ${app_launcher_locators.reporting_sidebar}

Click On Safety Option
    Wait Until Element Is Visible    ${app_launcher_locators.safety_sidebar}                    ${TIME}
    Click Element                    ${app_launcher_locators.safety_sidebar}

Click On Driver App Option
    Wait Until Element Is Visible    ${app_launcher_locators.driver_app_sidebar}                ${TIME}
    Click Element                    ${app_launcher_locators.driver_app_sidebar}

Click On Response Center Option
    Wait Until Element Is Visible    ${app_launcher_locators.response_center_sidebar}           ${TIME}
    Click Element                    ${app_launcher_locators.response_center_sidebar}

Click On Drive Workflow Option
    Wait Until Element Is Visible    ${app_launcher_locators.drive_workflow_sidebar}            ${TIME}
    Click Element                    ${app_launcher_locators.drive_workflow_sidebar}

Click On Mobile Workflow Option
    Wait Until Element Is Visible    ${app_launcher_locators.mobile_workflow_sidebar}           ${TIME}
    Click Element                    ${app_launcher_locators.mobile_workflow_sidebar}

Click On Roadnet Mobile Workflow Option
    Wait Until Element Is Visible    ${app_launcher_locators.rna_mobile_workflow_sidebar}        ${TIME}
    Click Element                    ${app_launcher_locators.rna_mobile_workflow_sidebar}

Click On Command Option
    Wait Until Element Is Visible    ${app_launcher_locators.command_sidebar}        ${TIME}
    Click Element                    ${app_launcher_locators.command_sidebar}

Click On Business Account Option
    Wait Until Element Is Visible    ${app_launcher_locators.business_account_sidebar}          ${TIME}
    Click Element                    ${app_launcher_locators.business_account_sidebar}

Click On Device Manager Option
    Wait Until Element Is Visible    ${app_launcher_locators.device_manager_sidebar}            ${TIME}
    Click Element                    ${app_launcher_locators.device_manager_sidebar}

Click On Entitlements Registry Option
    Wait Until Element Is Visible    ${app_launcher_locators.entitlements_registry_sidebar}     ${TIME}
    Click Element                    ${app_launcher_locators.entitlements_registry_sidebar}

Click On Onboarding Option
    Wait Until Element Is Visible    ${app_launcher_locators.onboarding_sidebar}                ${TIME}
    Click Element                    ${app_launcher_locators.onboarding_sidebar}

Click On MDM Profile Option
    Wait Until Element Is Visible    ${app_launcher_locators.mdm_profile_sidebar}               ${TIME}
    Click Element                    ${app_launcher_locators.mdm_profile_sidebar}

Click On SKU Registry Option
    Wait Until Element Is Visible    ${app_launcher_locators.sku_registry_sidebar}              ${TIME}
    Click Element                    ${app_launcher_locators.sku_registry_sidebar}

Click On Support Tools Option
    Wait Until Element Is Visible    ${app_launcher_locators.support_tools_sidebar}             ${TIME}
    Click Element                    ${app_launcher_locators.support_tools_sidebar}

Verify That All Tooltips From Card Are Displayed
    Wait Until Element Is Visible    ${app_launcher_locators.certify_repair_tooltip}             ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_maintenance_tooltip}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_history_tooltip}          ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.mobile_device_diagn_tooltip}        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.telematics_diagn_tooltip}           ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.fleetlocate_trailer_tooltip}        ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.driver_log_editor_tooltip}          ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.unassigned_vehi_activ_tooltip}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_assign_fuel_pur_tooltip}       ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_fuel_rec_tooltip}       ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_manual_dis_tooltip}     ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.fleetview_tooltip}                  ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.order_status_tooltip}               ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.service_history_tooltip}            ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.map_editor_tooltip}                 ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.modeling_tooltip}                   ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.service_pattern_analy_tooltip}      ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.stop_analyzer_tooltip}              ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.insight_tooltip}                    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.reporting_tooltip}                  ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.scorecard_tooltip}                  ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.safety_tooltip}                     ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.driver_app_tooltip}                 ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.response_center_tooltip}            ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.command_tooltip}                    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.roadnet_mobile_work_tooltip}        ${TIME}

Home Button From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.home_button_left_active}            ${TIME}

Assets Button From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.assets_button_left_active}          ${TIME}

Certify Repair Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.certify_repair_sidebar_a}           ${TIME}

Equipment Maintenance Planning Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_mainenance_sidebar_a}     ${TIME}

Equipment History Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.equipment_history_sidebar_a}        ${TIME}

Mobile Device Diagnostics Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.mobile_device_diag_sidebar_a}       ${TIME}

Telematics Diagnostics Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.telematics_diagnostics_sideb_a}     ${TIME}

Compliance Button From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.compliance_button_left_active}      ${TIME}

Driver Log Editor Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.driver_log_editor_sidebar_a}        ${TIME}

Unassigned Vehicle Activity Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.unassigned_vehicle_activ_sid_a}     ${TIME}

IFTA Assign Fuel Purchases Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_assign_fuel_pur_sidebar_a}     ${TIME}

IFTA Manage Fuel Receipts Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_fuel_rec_sidebar_a}     ${TIME}

IFTA Manage Manual Distance Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.ifta_manage_manual_dis_sidebar_a}    ${TIME}

Logistics Button From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.logistics_button_left_active}       ${TIME}

Fleetview Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.fleetview_sidebar_a}                ${TIME}

Order Status Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.order_status_sidebar_a}             ${TIME}

Service History Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.service_history_sidebar_a}          ${TIME}

Map Editor Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.map_editor_sidebar_a}               ${TIME}

Modeling Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.modeling_sidebar_a}                 ${TIME}

Service Pattern Analyzer Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.service_pattern_anal_sidebar_a}     ${TIME}

Stop Analyzer Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.stop_analyzer_sidebar_a}            ${TIME}

Performance Button From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.performance_button_left_active}     ${TIME}

Insight Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.insight_sidebar_a}                  ${TIME}

Reporting Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.reporting_sidebar_a}                ${TIME}

Scorecard Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.scorecard_sidebar_a}                ${TIME}

Safety Button From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.safety_left_active}                 ${TIME}

Safety Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.safety_sidebar_a}                   ${TIME}

Administration Button From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.admin_button_left_active}           ${TIME}

Command Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.command_sidebar_a}                  ${TIME}

Roadnet Mobile Workflow Option From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.rna_mobile_workflow_sidebar_a}      ${TIME}

System Console Button From Sidebar Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.system_console_left_active}         ${TIME}
