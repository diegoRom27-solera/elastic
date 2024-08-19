
Select Main Iframe from App Launcher Page
    Wait Until Element Is Visible                dom:${deep_link_locators.iframe}   ${TIME}
    ${DEEP_LINK} =    Get Element Attribute      dom:${deep_link_locators.iframe}    src
    Log    ${DEEP_LINK}
    Select Frame                                 dom:${deep_link_locators.iframe}
    [Return]    ${DEEP_LINK}

Unselect Main Iframe from App Launcher Page
    Unselect Frame

Certify Repair Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.certify_repair_title}            ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.search_button_certify_repair}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.reset_button_certify_repair}     ${TIME}

Equipment Maintenance Planning Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.past_due_eq_man_plan}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.upcoming_eq_man_plan}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.schaduled_eq_man_plan}   ${TIME}

Mobile Device Diagnostics Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.mdd_option_button}     ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.mmd_refresh_button}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.mmd_export_button}     ${TIME}

Telematics Diagnostics Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.telematic_dia_filter_button}     ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.telematic_dia_refresh_button}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.telematic_dia_export_button}     ${TIME}

Equipment History Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.history_for_equipment_label}     ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.position_history_button}         ${TIME}

FleetLocate Trailer Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.username_textbox_fleetlocate}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.password_textbox_fleetlocate}    ${TIME}

Driver Log Editor Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.driver_label_home}      ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.go_button_driver}       ${TIME}

Unassigned Vehicle Activity Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.reload_uva_button}     ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.export_uva_button}     ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.save_uva_button}       ${TIME}

IFTA Assign Fuel Purchases Card Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.reload_ifta_afp_button}             ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.load_list_ifta_afp_button}          ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.delete_selected_ifta_afp_button}    ${TIME}

IFTA Manage Fuel Receipts Card Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.reload_ifta_mfr_button}             ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.import_fuel_ifta_mfr_button}        ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.delete_selected_ifta_mfr_button}    ${TIME}

IFTA Manage Manual Distance Card Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.reload_ifta_mmd_button}        ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.go_ifta_mmd_button}            ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.add_manual_ifta_mmd_button}    ${TIME}

FleetView Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.fleetview_routes_button}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.fleetview_refresh_button}   ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.fleetview_search_button}    ${TIME}

Order Status Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.basic_search_button}       ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.search_orders_drop_down}   ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.find_orders_button}        ${TIME}

Service History Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.service_history_summary_title}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.service_history_detail_title}     ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.service_history_location_title}   ${TIME}

Map Editor Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.map_editor_map}            ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.travel_info_label}         ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.clear_button_map_editor}   ${TIME}

Modeling Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.modeling_title_home}        ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.session_button_modeling}    ${TIME}

Stop Analyzer Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.stop_analyzer_home}     ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.search_ison}            ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.stop_analyzer_panel}    ${TIME}

Service Pattern Analyzer Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.service_pattern_anal_home}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.ser_pat_ana_search_icon}      ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.service_pat_analyzer_panel}   ${TIME}

Insight Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.search_bar_insight}        ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.home_button_insight}       ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.save_new_button_insight}   ${TIME}

Reporting Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.region_label_reporting}       ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.reports_button_reporting}     ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.categories_title_reporting}   ${TIME}

Scorecard Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.scorecards_button_scorecards}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.setup_button_scorecards}         ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.add_scorecard_button}            ${TIME}

Safety Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.cr_events_report_button_safety}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.safety_iframe}                     ${TIME}
    Select Frame                     ${deep_link_locators.safety_iframe}
    Wait Until Element Is Visible    ${deep_link_locators.general_report_button_safety}      ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.black_box_label_safety}            ${TIME}

Driver App Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.company_text_box_driver}          ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.user_name_text_box_driver}        ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.password_text_box_driver}         ${TIME}

Response Center Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.company_text_box_response}        ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.user_name_text_box_response}      ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.password_text_box_response}       ${TIME}

Command Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.command_sign_in_label}    ${TIME}

Roadnet Mobile Workflow Home Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.action_button_rna_mobile_workf}      ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.ar_a_wait_label_rna_mobile_workf}    ${TIME}

Device Manager Page Is Loaded
    Wait Until Element Is Visible    ${deep_link_locators.devices_button}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.fleet_config_button}  ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.groups_button}   ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.vehicles_button}    ${TIME}
    Wait Until Element Is Visible    ${deep_link_locators.title_device}  ${TIME}
