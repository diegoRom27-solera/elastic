
Load Super Bar Home Page
    Wait Until Element Is Visible    ${super_bar_portal_locators.favorites_button_left}         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.home_button_left}              ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.delivery_button_left}          ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_button_left}            ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.compliance_button_left}        ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.insights_button_left}          ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_button_left}    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.smart_drive_button_left}       ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.favorites_button_main}         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.all_apps_button_main}          ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.delivery_button_main}          ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_button_main}            ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.compliance_button_main}        ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.insights_button_main}          ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_button_main}    ${TIME}

Load All Apps
    Wait Until Element Is Visible    ${super_bar_portal_locators.home_app}                      ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.fleetview_app}                 ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.equipment_history_app}         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.order_status_app}              ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.service_history_app}           ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.travel_path_app}               ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.messaging_app}                 ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_app}                    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.driver_log_editor_app}         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.unidentified_driving_app}      ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.ifta_app}                      ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.equipment_maintenance_app}     ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.fault_monitoring_app}          ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.insight_app}                   ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.performance_monitoring_app}    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.diver_scorecard_app}           ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_app}            ${TIME}

Navigate To Error Page
    ${URL} =    Collections.Get From Dictionary    ${GLOBAL}    ERROR
    Go To    ${URL}

Navigate To Maintenance Page
    ${URL} =    Collections.Get From Dictionary    ${GLOBAL}    MAINTENANCE
    Go To    ${URL}

Verify That Initials Are Displayed In The User Avatar
    [Arguments]    ${user}
    ${XPATH} =    list_xpath.Obtain Xpath Initals User Name    ${user}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

Verify That The Tooltip Is Displayed From User Avatar
    [Arguments]    ${company}
    ${XPATH} =    list_xpath.Obtain Xpath Tooltip Avatar    ${company}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

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
    Wait Until Element Is Visible    ${super_bar_portal_locators.sign_out_button}    ${TIME}

Click On Sign Out Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.sign_out_button}    ${TIME}
    Click Element                    ${super_bar_portal_locators.sign_out_button}

Load Error Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.error_code_message}             ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.error_title_message}            ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.error_description_message}      ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.error_home_page_link}           ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.error_help_link}                ${TIME}

Load Maintenance Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.maintenance_title_message}      ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.maintenance_descrip_message}    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.maintenance_contact_us_link}    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.maintenance_help_link}          ${TIME}

Mouse Over On Favorites Left Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.favorites_button_left}          ${TIME}
    Mouse Over                       ${super_bar_portal_locators.favorites_button_left}
    Wait Until Element Is Visible    ${super_bar_portal_locators.favorites_button_left_focus}    ${TIME}

Click On Favorites Main Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.favorites_button_main}          ${TIME}
    Click Element                    ${super_bar_portal_locators.favorites_button_main}

Verify That Favorites Main Button Is Active
    Wait Until Element Is Visible    ${super_bar_portal_locators.favorites_button_main_active}    ${TIME}

Click On Home Menu
    Wait Until Element Is Visible    ${super_bar_portal_locators.home_button_left}               ${TIME}
    Click Element                    ${super_bar_portal_locators.home_button_left}

Mouse Over On Home Menu
    Wait Until Element Is Visible    ${super_bar_portal_locators.home_button_left}               ${TIME}
    Mouse Over                       ${super_bar_portal_locators.home_button_left}
    Wait Until Element Is Visible    ${super_bar_portal_locators.home_button_left_focus}         ${TIME}

Click On All Apps Main Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.all_apps_button_main}           ${TIME}
    Click Element                    ${super_bar_portal_locators.all_apps_button_main}

Verify That All Apps Main Button Is Active
    Wait Until Element Is Visible    ${super_bar_portal_locators.all_apps_button_main_active}     ${TIME}

Verify That Active Class In Home Appears From Home Page
    Wait Until Element Is Visible    ${super_bar_portal_locators.home_button_left_focus}         ${TIME}

Verify That The Tooltip Is Displayed
    Wait Until Element Is Visible    ${super_bar_portal_locators.home_tooltip_left}              ${TIME}

Mouse Over On Delivery Left Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.delivery_button_left}           ${TIME}
    Mouse Over                       ${super_bar_portal_locators.delivery_button_left}
    Wait Until Element Is Visible    ${super_bar_portal_locators.delivery_button_left_focus}     ${TIME}

Mouse Over On Delivery Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.fleetview_sidebar}          ${TIME}
    Mouse Over                       ${super_bar_portal_locators.fleetview_sidebar}

Click On Delivery Main Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.delivery_button_main}           ${TIME}
    Click Element                    ${super_bar_portal_locators.delivery_button_main}

Verify That Delivery Main Button Is Active
    Wait Until Element Is Visible    ${super_bar_portal_locators.delivery_button_main_active}     ${TIME}

Mouse Over On Safety Left Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_button_left}             ${TIME}
    Mouse Over                       ${super_bar_portal_locators.safety_button_left}
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_button_left_focus}       ${TIME}

Mouse Over On Safety Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_sidebar}                 ${TIME}
    Mouse Over                       ${super_bar_portal_locators.safety_sidebar}

Click On Safety Main Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_button_main}             ${TIME}
    Click Element                    ${super_bar_portal_locators.safety_button_main}

Verify That Safety Main Button Is Active
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_button_main_active}      ${TIME}

Mouse Over On Compliance Left Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.compliance_button_left}          ${TIME}
    Mouse Over                       ${super_bar_portal_locators.compliance_button_left}
    Wait Until Element Is Visible    ${super_bar_portal_locators.compliance_button_left_focus}    ${TIME}

Mouse Over On Compliance Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.driver_log_editor_sidebar}       ${TIME}
    Mouse Over                       ${super_bar_portal_locators.driver_log_editor_sidebar}

Click On Compliance Main Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.compliance_button_main}          ${TIME}
    Click Element                    ${super_bar_portal_locators.compliance_button_main}

Verify That Compliance Main Button Is Active
    Wait Until Element Is Visible    ${super_bar_portal_locators.compliance_button_main_active}    ${TIME}

Mouse Over On Insights Left Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.insights_button_left}           ${TIME}
    Mouse Over                       ${super_bar_portal_locators.insights_button_left}
    Wait Until Element Is Visible    ${super_bar_portal_locators.insights_button_left_focus}     ${TIME}

Mouse Over On Insights Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.reporting_sidebar}              ${TIME}
    Mouse Over                       ${super_bar_portal_locators.reporting_sidebar}

Click On Insights Main Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.insights_button_main}           ${TIME}
    Click Element                    ${super_bar_portal_locators.insights_button_main}

Verify That Insights Main Button Is Active
    Wait Until Element Is Visible    ${super_bar_portal_locators.insights_button_main_active}    ${TIME}

Mouse Over On Administration Left Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_button_left}     ${TIME}
    Mouse Over                       ${super_bar_portal_locators.administration_button_left}
    Wait Until Element Is Visible    ${super_bar_portal_locators.admin_button_left_focus}        ${TIME}

Mouse Over On Administration Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_sidebar}         ${TIME}
    Mouse Over                       ${super_bar_portal_locators.administration_sidebar}

Click On Administration Main Button
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_button_main}     ${TIME}
    Click Element                    ${super_bar_portal_locators.administration_button_main}

Verify That Administration Main Button Is Active
    Wait Until Element Is Visible    ${super_bar_portal_locators.admin_button_main_active}       ${TIME}

Click On Favorite Icon From An App
    [Arguments]    ${app}
    ${XPATH} =    list_xpath.Obatin Xpath Fav Icon App    ${app}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Verify That The Favorite Icon Is Active
    [Arguments]    ${app}
    ${XPATH} =    list_xpath.Obtain Xpath Fav Icon App Active    ${app}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

Click On Favorite Icon And Verify That The Favorite Icon Is Active From Farm
    [Arguments]    @{APPS}
    FOR    ${APP}    IN    @{APPS}
        Click On Favorite Icon From An App         ${APP}
        Verify That The Favorite Icon Is Active    ${APP}
    END

Click On Favorite Icon From Farm
    [Arguments]    @{APPS}
    FOR    ${APP}    IN    @{APPS}
        Click On Favorite Icon From An App         ${APP}
    END

Mouse Over On App Menu
    [Arguments]    ${app}
    ${XPATH} =    list_xpath.Obtain Xpath App Menu    ${app}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Mouse Over                       ${XPATH}

Click On Favorite Icon From An App From Flyout
    [Arguments]    ${app}
    ${XPATH} =    list_xpath.Obatin Xpath Fav Icon App Flyout    ${app}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Verify That The Favorite Icon Is Active From Flyout
    [Arguments]    ${app}
    ${XPATH} =    list_xpath.Obtain Xpath Fav Icon App Active Flyout    ${app}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}

Click On Favorite Icon And Verify That The Favorite Icon Is Active From Flyout
    [Arguments]    @{APPS}
    FOR    ${APP}    IN    @{APPS}
        Click On Favorite Icon From An App From Flyout        ${APP}
        Verify That The Favorite Icon Is Active From Flyout   ${APP}
    END

Click On Favorite Icon From Flyout
    [Arguments]    @{APPS}
    FOR    ${APP}    IN    @{APPS}
        Click On Favorite Icon From An App From Flyout        ${APP}
    END

Load Favorites Page When There Are No Favorite Apps
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.favorite_title_message}          ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.favorite_description_message}    ${TIME}

Refresh Page
    Execute Javascript    window.location.reload(true)

Load All Apps Tab
    Wait Until Element Is Visible    ${super_bar_portal_locators.home_app}                         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.fleetview_app}                    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.equipment_history_app}            ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.order_status_app}                 ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.service_history_app}              ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.travel_path_app}                  ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.messaging_app}                    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_app}                       ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.driver_log_editor_app}            ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.unidentified_driving_app}         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.ifta_app}                         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.equipment_maintenance_app}        ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.fault_monitoring_app}             ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.reporting_app}                    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.insight_app}                      ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.performance_monitoring_app}       ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.diver_scorecard_app}              ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_app}               ${TIME}

Load Delivery Tab
    Wait Until Element Is Visible    ${super_bar_portal_locators.fleetview_app}                    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.equipment_history_app}            ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.order_status_app}                 ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.service_history_app}              ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.travel_path_app}                  ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.messaging_app}                    ${TIME}

Load Delivery Sidebar Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.fleetview_sidebar}                ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.equipment_history_sidebar}        ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.order_status_sidebar}             ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.service_history_sidebar}          ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.travel_path_sidebar}              ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.messaging_sidebar}                ${TIME}

Load Safety Tab
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_app}                       ${TIME}

Load Safety Sidebar Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.safety_sidebar}                   ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.driver_app_sidebar}               ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.response_center_sidebar}          ${TIME}

Load Compliance Tab
    Wait Until Element Is Visible    ${super_bar_portal_locators.driver_log_editor_app}            ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.unidentified_driving_app}         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.ifta_app}                         ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.equipment_maintenance_app}        ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.fault_monitoring_app}             ${TIME}

Load Compliance Sidebar Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.driver_log_editor_sidebar}        ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.unidentified_driving_sidebar}     ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.ifta_sidebar}                     ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.equipment_maintenance_sidebar}    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.fault_monitoring_sidebar}         ${TIME}

Load Insights Tab
    Wait Until Element Is Visible    ${super_bar_portal_locators.reporting_app}                    ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.insight_app}                      ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.performance_monitoring_app}       ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.diver_scorecard_app}              ${TIME}

Load Insights Sidebar Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.reporting_sidebar}                ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.insight_sidebar}                  ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.performance_monitoring_sidebar}   ${TIME}
    Wait Until Element Is Visible    ${super_bar_portal_locators.diver_scorecard_sidebar}          ${TIME}

Load Administration Tab
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_app}               ${TIME}

Load Administration Sidebar Flyout
    Wait Until Element Is Visible    ${super_bar_portal_locators.administration_sidebar}           ${TIME}

Verify The Tooltip From Fleetview
    Wait Until Element Is Visible    ${super_bar_portal_locators.fleetview_tooltip}                ${TIME}

Verify The Tooltip From Order Status
    Wait Until Element Is Visible    ${super_bar_portal_locators.order_status_tooltip}             ${TIME}

Verify The Tooltip From Service History
    Wait Until Element Is Visible    ${super_bar_portal_locators.service_history_tooltip}          ${TIME}

Verify The Tooltip From Unidentified Driving
    Wait Until Element Is Visible    ${super_bar_portal_locators.unidentified_driving_tooltip}     ${TIME}