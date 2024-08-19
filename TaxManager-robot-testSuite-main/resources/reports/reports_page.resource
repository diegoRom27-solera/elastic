
Load Reports Page
    Wait Until Element Is Visible    ${reports_page_locators.imperial_system_button}             ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.metric_system_button}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.reports_title}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_by_jurisdiction_report}    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_by_jurisdiction_report}        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fleet_report}                       ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_efficiency_report}             ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_crossing_report}       ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.reconciliation_report}              ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchase_report}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.trip_details_report}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_records_report}            ${TIME}

Click On Imperial System Button
    Wait Until Element Is Visible    ${reports_page_locators.imperial_system_button}             ${TIME}
    Click Element                    ${reports_page_locators.imperial_system_button}

Click On Metric System Button
    Wait Until Element Is Visible    ${reports_page_locators.metric_system_button}               ${TIME}
    Click Element                    ${reports_page_locators.metric_system_button}

Click On Distance By Jurisdiction Report
    Wait Until Element Is Visible    ${reports_page_locators.distance_by_jurisdiction_report}    ${TIME}
    Click Element                    ${reports_page_locators.distance_by_jurisdiction_report}

Click On Fuel By Jurisdiction Report
    Wait Until Element Is Visible    ${reports_page_locators.fuel_by_jurisdiction_report}        ${TIME}
    Click Element                    ${reports_page_locators.fuel_by_jurisdiction_report}

Click On Fleet Report
    Wait Until Element Is Visible    ${reports_page_locators.fleet_report}                       ${TIME}
    Click Element                    ${reports_page_locators.fleet_report}

Click On Fuel Efficiency Report
    Wait Until Element Is Visible    ${reports_page_locators.fuel_efficiency_report}             ${TIME}
    Click Element                    ${reports_page_locators.fuel_efficiency_report}

Click On Jurisdiction Crossing Report
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_crossing_report}       ${TIME}
    Click Element                    ${reports_page_locators.jurisdiction_crossing_report}

Click On Reconciliation Report
    Wait Until Element Is Visible    ${reports_page_locators.reconciliation_report}              ${TIME}
    Click Element                    ${reports_page_locators.reconciliation_report}

Click On Fuel Purchase Report
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchase_report}               ${TIME}
    Click Element                    ${reports_page_locators.fuel_purchase_report}

Click On Trip Details Report
    Wait Until Element Is Visible    ${reports_page_locators.trip_details_report}                ${TIME}
    Click Element                    ${reports_page_locators.trip_details_report}

Click On Distance Records Report
    Wait Until Element Is Visible    ${reports_page_locators.distance_records_report}            ${TIME}
    Click Element                    ${reports_page_locators.distance_records_report}

Load Distance By Jurisdiction Page
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_title}                     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label}                     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.in_jurisdiction_label}              ${TIME}

Load Fuel By Jurisdiction Page
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_title}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_fuel_label}                   ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.in_jurisdiction_label_fuel}         ${TIME}

Load Fleet Page
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fleet_title}                        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_fuel_label}                   ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.percentage_total_distance_label}    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label}                     ${TIME}

Load Fuel Efficiency Page
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_efficiency_title}              ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.mpg_label}                          ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_label}                     ${TIME}

Load Jurisdiction Crossing Page
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_crossing_title}        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.date_time_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.latitude_label}                     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.longitude_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.odometer_label}                     ${TIME}

Load Reconciliation Page
    Sleep                            ${MD_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.reconciliation_title}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.mpg_label}                          ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_tax_rate_label}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.surcharge_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_label}                        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label}                         ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.horizontal_scroll}                  ${TIME}
    # Scroll Element Into View         ${reports_page_locators.horizontal_scroll}
    # Drag And Drop By Offset          ${reports_page_locators.horizontal_scroll}    700    0
    # Wait Until Element Is Visible    ${reports_page_locators.non_toll_label}                     ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.taxable_label}                      ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label}               ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_required_label}                ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_over_label}                    ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.over_label}                         ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.tax_rate_label_imperial}            ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.tax_label_imperial}                 ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.final_label_imperial}               ${TIME}

Load Fuel Purchase Page
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchase_title}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.card_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.date_time_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.volume_label}                       ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.city_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vendor_label}                       ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.site_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.invoice_label}                      ${TIME}

Load Trip Details Page
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.trip_details_title}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.date_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.latitude_label}                     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.longitude_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.position_label}                     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.odometer_label}                     ${TIME}

Load Distance Records Page
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_records_title}             ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.created_date_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.created_time_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.start_odometer_label}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.end_odometer_label}                 ${TIME}
    Drag And Drop By Offset          ${reports_page_locators.horizontal_scroll}    600    0
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label}                     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_distance_label}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.record_type_label}                  ${TIME}

Load Distance By Jurisdiction Page With Imperial System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_title}                     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label_imperial}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label_imperial}            ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label_imperial}      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.in_jurisdiction_label}              ${TIME}

Load Distance By Jurisdiction Page With Metric System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_title}                     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label_metric}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label_metric}              ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label_metric}        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.in_jurisdiction_label}              ${TIME}

Load Fuel By Jurisdiction Page With Imperial System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_title}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label_imperial}      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_fuel_label_imperial}          ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.in_jurisdiction_label_fuel}         ${TIME}

Load Fuel By Jurisdiction Page With Metric System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_title}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label_metric}        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_fuel_label_metic}             ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.in_jurisdiction_label_fuel}         ${TIME}

Load Fleet Page With Metric System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fleet_title}                        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_fuel_label_metic}             ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.percentage_total_distance_label}    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label_metric}        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label_metric}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label_metric}              ${TIME}

Load Fleet Page With Imperial System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fleet_title}                        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_fuel_label_imperial}          ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.percentage_total_distance_label}    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label_imperial}      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label_imperial}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label_imperial}            ${TIME}

Load Fuel Efficiency Page With Metric System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_efficiency_title}              ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.kpl_label}                          ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label_metric}        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_label_metric}              ${TIME}

Load Fuel Efficiency Page With Imperial System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_efficiency_title}              ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.mpg_label}                          ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label_imperial}      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_label_imperial}            ${TIME}

Load Reconciliation Page With Imperial System
    Sleep                            ${MD_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.reconciliation_title}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.mpg_label}                          ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_tax_rate_label}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.surcharge_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_label_imperial}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label_imperial}                ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.horizontal_scroll}                  ${TIME}
    # Scroll Element Into View         ${reports_page_locators.horizontal_scroll}
    # Drag And Drop By Offset          ${reports_page_locators.horizontal_scroll}    700    0
    # Wait Until Element Is Visible    ${reports_page_locators.non_toll_label_imperial}            ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.taxable_label_imperial}             ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label_imperial}      ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_required_imperial}             ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_over_imperial}                 ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.over_label_imperial}                ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.tax_rate_label_imperial}            ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.tax_label_imperial}                 ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.final_label_imperial}               ${TIME}

Load Reconciliation Page With Metric System
    Sleep                            ${MD_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.reconciliation_title}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.kpl_label}                          ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_tax_rate_label}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.surcharge_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_label_metric}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label_metric}                  ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.horizontal_scroll}                  ${TIME}
    # Scroll Element Into View         ${reports_page_locators.horizontal_scroll}
    # Drag And Drop By Offset          ${reports_page_locators.horizontal_scroll}    700    0
    # Wait Until Element Is Visible    ${reports_page_locators.non_toll_label_metric}              ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.taxable_label_metric}               ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_purchased_label_metric}        ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_required_metric}               ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.fuel_over_metric}                   ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.over_label_metric}                  ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.tax_rate_label_metric}              ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.tax_label_metric}                   ${TIME}
    # Wait Until Element Is Visible    ${reports_page_locators.final_label_metric}                 ${TIME}

Load Fuel Purchase Page With Imperial System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchase_title}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.card_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.date_time_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.volume_label_imperial}              ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.city_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vendor_label}                       ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.site_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.invoice_label}                      ${TIME}

Load Fuel Purchase Page With Metric System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.fuel_purchase_title}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.card_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.date_time_label}                    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.volume_label_metric}                ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.city_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vendor_label}                       ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.site_label}                         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.invoice_label}                      ${TIME}

Load Distance Records Page With Imperial System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_records_title}             ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.created_date_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.created_time_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.start_odometer_label}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.end_odometer_label}                 ${TIME}
    Drag And Drop By Offset          ${reports_page_locators.horizontal_scroll}    600    0
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label_imperial}            ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_distance_label_imperial}       ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label_imperial}      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.record_type_label}                  ${TIME}

Load Distance Records Page With Metric System
    Sleep                            ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_records_title}             ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}                  ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.created_date_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.created_time_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.start_odometer_label}               ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.end_odometer_label}                 ${TIME}
    Drag And Drop By Offset          ${reports_page_locators.horizontal_scroll}    600    0
    Wait Until Element Is Visible    ${reports_page_locators.non_toll_label_metric}              ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_distance_label_metric}         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.total_distance_label_metric}        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.record_type_label}                  ${TIME}

Click On Filter Button
    Wait Until Element Is Visible    ${reports_page_locators.filter_button}                      ${TIME}
    Click Element                    ${reports_page_locators.filter_button}

Click On Close Button From Filter
    Wait Until Element Is Visible    ${reports_page_locators.close_filter_button}    ${TIME}
    ${VALIDATE} =    Run Keyword and Ignore Error    Click Element    ${reports_page_locators.close_filter_button}
    IF    '${VALIDATE}[0]' == 'FAIL'
        Wait Until Element Is Visible    ${reports_page_locators.advisor_red_label}      ${TIME}
        Click Element                    ${reports_page_locators.advisor_red_label}
        Wait Until Element Is Visible    ${reports_page_locators.close_filter_button}    ${TIME}
        Click Element                    ${reports_page_locators.close_filter_button}
    END

Click On List Labels
    Wait Until Element Is Visible    ${reports_page_locators.labels_filter}               ${TIME}
    Click Element                    ${reports_page_locators.labels_filter}
    Wait Until Element Is Visible    ${reports_page_locators.search_input_text_filter}    ${TIME}

Click On List Tax Accounts
    Wait Until Element Is Visible    ${reports_page_locators.tax_account_select}               ${TIME}
    Click Element                    ${reports_page_locators.tax_account_select}

Click On Jurisdiction List
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_filter}         ${TIME}
    Click Element                    ${reports_page_locators.jurisdiction_filter}
    Wait Until Element Is Visible    ${reports_page_locators.search_input_text_filter}    ${TIME}

Click On Vehicles List
    Wait Until Element Is Visible    ${reports_page_locators.vehicles_filter}         ${TIME}
    Click Element                    ${reports_page_locators.vehicles_filter}
    Wait Until Element Is Visible    ${reports_page_locators.search_input_text_filter}    ${TIME}

Click On Generate Button
    Wait Until Element Is Visible    ${reports_page_locators.generate_button_filter}    ${TIME}
    Scroll Element Into View         ${reports_page_locators.generate_button_filter}
    Sleep    ${SH_TIME}
    Click Element                    ${reports_page_locators.generate_button_filter}
    Sleep    ${SH_TIME}

Click On Reset All
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.reset_all_button_filter}         ${TIME}
    Click Element                    ${reports_page_locators.reset_all_button_filter}

Confirm Reset All
    Wait Until Element Is Visible    ${reports_page_locators.reset_all_popup_menu_title}      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.reset_all_popup_menu_confirm}    ${TIME}
    Click Element                    ${reports_page_locators.reset_all_popup_menu_confirm}
    Sleep    ${SH_TIME}

Click On Cancel Reset Button 
    Wait Until Element Is Visible    ${reports_page_locators.reset_all_popup_menu_cancel}       ${TIME}
    Click Element                    ${reports_page_locators.reset_all_popup_menu_cancel}

Search By Label
    [Arguments]    ${label}
    Wait Until Element Is Visible    ${reports_page_locators.all_label_checkbox_filter}    ${TIME}
    Click Element                    ${reports_page_locators.all_label_checkbox_filter}
    Wait Until Element Is Visible    ${reports_page_locators.search_input_text_filter}     ${TIME}
    Input Text                       ${reports_page_locators.search_input_text_filter}     ${label}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${label}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}
    Click Element                    ${reports_page_locators.labels_filter}

Search By Tax Account 
    [Arguments]    ${taxAccount}
    Wait Until Element Is Visible    ${reports_page_locators.tax_account_select}              ${TIME}
    Select From List By Label        ${reports_page_locators.tax_account_select}              ${taxAccount}

Select A Specify Option In Label Field
    [Arguments]    ${label}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${label}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}
    Click Element                    ${reports_page_locators.labels_filter}

Search By Juridistion
    [Arguments]    ${juridistion}
    Wait Until Element Is Visible    ${reports_page_locators.all_juridistion_checkbox_filter}    ${TIME}
    Click Element                    ${reports_page_locators.all_juridistion_checkbox_filter}
    Wait Until Element Is Visible    ${reports_page_locators.search_input_text_filter}           ${TIME}
    Input Text                       ${reports_page_locators.search_input_text_filter}           ${juridistion}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${juridistion}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep    5
    Click Element                    ${reports_page_locators.jurisdiction_filter}

Select A Specify Option In Juridistion Field
    [Arguments]    ${juridistion}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${juridistion}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep    5
    Click Element                    ${reports_page_locators.jurisdiction_filter}

Search By Vehicles
    [Arguments]    ${vehicles}
    Wait Until Element Is Visible    ${reports_page_locators.all_vehicles_checkbox_filter}    ${TIME}
    Click Element                    ${reports_page_locators.all_vehicles_checkbox_filter}
    Wait Until Element Is Visible    ${reports_page_locators.search_input_text_filter}        ${TIME}
    Input Text                       ${reports_page_locators.search_input_text_filter}        ${vehicles}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${vehicles}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}
    Click Element                    ${reports_page_locators.vehicles_filter}

Validate Vehicle Filtered
    [Arguments]    ${vehicle}
    ${element} =    Get WebElement    ${reports_page_locators.vehicles_filter}
    FOR    ${item}    IN    ${element}
        ${name} =    Get Text    ${item}
        Log    Item:${item.text}
    END
    # Should Be Equal As Strings       ${element}    ${vehicle}

Select A Specify Option In Vehicles Field
    [Arguments]    ${vehicles}
    ${XPATH} =    list_xpath.Obtain Xpath By Label    ${vehicles}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Scroll Element Into View         ${XPATH}
    Click Element                    ${XPATH}
    Sleep                            ${SH_TIME}
    Click Element                    ${reports_page_locators.vehicles_filter}

Click On Ifta Reportable Dropdown
    Wait Until Element Is Visible    ${reports_page_locators.ifta_reportable_filter}    ${TIME}
    Click Element                    ${reports_page_locators.ifta_reportable_filter}

Select An Ifta Reportable
    [Arguments]    ${ifta}
    Select From List By Value        ${reports_page_locators.ifta_reportable_filter}    ${ifta}

Jurisdiction List Is Activated
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_filter_activated}    ${TIME}

Jurisdiction List Is Deactivated
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_filter_deactivated}    ${TIME}

Labels List Is Activated
    Wait Until Element Is Visible    ${reports_page_locators.labels_filter_activated}          ${TIME}
    Sleep                            ${SH_TIME}

Vehicles List Is Activated
    Wait Until Element Is Visible    ${reports_page_locators.vehicles_filter_activated}        ${TIME}

Select An Start Date
    [Arguments]    ${date}
    Wait Until Element Is Visible    ${reports_page_locators.start_date_filter}    ${TIME}
    Input Text                       ${reports_page_locators.start_date_filter}    ${date}

Validate Date In Start Date
    [Arguments]    ${date}
    Wait Until Element Is Visible    ${reports_page_locators.start_date_filter}    ${TIME}
    ${name} =    Get Text            ${reports_page_locators.start_date_filter}
    Should Be Equal As Strings       ${name}    ${date}

Clear An Start Date Field
    Wait Until Element Is Visible    ${reports_page_locators.start_date_filter}    ${TIME}
    Click Element                    ${reports_page_locators.start_date_filter}
    Press Keys                       ${reports_page_locators.start_date_filter}    DELETE

Select An End Date
    [Arguments]    ${date}
    Wait Until Element Is Visible    ${reports_page_locators.end_date_filter}      ${TIME}
    Input Text                       ${reports_page_locators.end_date_filter}      ${date}

Validate Date In End Date
    [Arguments]    ${date}
    Wait Until Element Is Visible    ${reports_page_locators.end_date_filter}    ${TIME}
    ${name} =    Get Text            ${reports_page_locators.end_date_filter}
    Should Be Equal As Strings       ${name}    ${date}

Clear An End Date Field
    Wait Until Element Is Visible    ${reports_page_locators.end_date_filter}    ${TIME}
    Click Element                    ${reports_page_locators.end_date_filter}
    Press Keys                       ${reports_page_locators.end_date_filter}    DELETE

Close Report Page
    Wait Until Element Is Visible    ${reports_page_locators.close_general_button}    ${TIME}
    Click Element                    ${reports_page_locators.close_general_button}

Click On Next Page Button
    Wait Until Element Is Visible    ${reports_page_locators.next_page_button_enable}    ${TIME}
    Scroll Element Into View         ${reports_page_locators.next_page_button_enable}
    Click Element                    ${reports_page_locators.next_page_button_enable}

Click On Previous Page Button
    Wait Until Element Is Visible    ${reports_page_locators.previous_page_button_enable}    ${TIME}
    Click Element                    ${reports_page_locators.previous_page_button_enable}

Click On First Page Button
    Wait Until Element Is Visible    ${reports_page_locators.first_page_button_enable}    ${TIME}
    Click Element                    ${reports_page_locators.first_page_button_enable}

Click On Last Page Button
    Wait Until Element Is Visible    ${reports_page_locators.last_page_button_enable}    ${TIME}
    Click Element                    ${reports_page_locators.last_page_button_enable}

Verify That There Are At Least 12 Rows
    Wait Until Element Is Visible    ${reports_page_locators.at_least_12_rows}    ${TIME}

Verify That The General Button Is Disabled
    Wait Until Element Is Visible    ${reports_page_locators.disable_generate_button_filter}    ${TIME}
    Scroll Element Into View         ${reports_page_locators.disable_generate_button_filter}

Verify That An Error Message About 92 Days Is Displayed
    Wait Until Element Is Visible    ${reports_page_locators.error_message_about_92_days}    ${TIME}

Verify That An Error Message About Multiple Quarters
    Wait Until Element Is Visible    ${reports_page_locators.error_message_about_quarters}    ${TIME}

Drag And Drop Jurisdiction Column To Last Position
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}    ${TIME}
    Drag And Drop                    ${reports_page_locators.jurisdiction_label}    ${reports_page_locators.in_jurisdiction_label}
    Sleep                            ${UL_TIME}

Drag And Drop Jurisdiction Column To First Position First Step
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}            ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}            ${TIME}
    Drag And Drop                    ${reports_page_locators.jurisdiction_label}       ${reports_page_locators.vehicle_label}
    Sleep                            ${UL_TIME}

Drag And Drop Jurisdiction Column To Last Position From Fuel By Jurisdiction Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}                 ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.in_jurisdiction_label_fuel}    ${TIME}
    Drag And Drop                    ${reports_page_locators.jurisdiction_label}            ${reports_page_locators.in_jurisdiction_label_fuel}
    Sleep                            ${UL_TIME}

Drag And Drop Jurisdiction Column To First Position Second Step
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}            ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.vehicle_label}            ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}            ${reports_page_locators.jurisdiction_label}
    Sleep                            ${UL_TIME}

Drag And Drop Jurisdiction Column To Last Position From Fleet Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}                      ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.percentage_total_distance_label}    ${TIME}
    Drag And Drop                    ${reports_page_locators.jurisdiction_label}                 ${reports_page_locators.percentage_total_distance_label}
    Sleep                            ${UL_TIME}

Drag And Drop Vehicle ID Column To Last Position From Fuel Efficiency Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.mpg_label}        ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}    ${reports_page_locators.mpg_label}
    Sleep                            ${UL_TIME}

Drag And Drop Vehicle ID Column To First Position Fuel Efficiency Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.distance_label}    ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}     ${reports_page_locators.distance_label}
    Sleep                            ${UL_TIME}

Drag And Drop Jurisdiction Column To Last Position From Fuel Purchase Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.invoice_label}    ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}    ${reports_page_locators.invoice_label}
    Sleep                            ${UL_TIME}

Drag And Drop Vehicle ID Column To First Position Fuel Purchase Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}     ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.card_label}        ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}     ${reports_page_locators.card_label}
    Sleep                            ${UL_TIME}

Drag And Drop Vehicle ID Column To Last Position From Distance Record Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}        ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.record_type_label}    ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}        ${reports_page_locators.record_type_label}
    Sleep                            ${UL_TIME}

Drag And Drop Vehicle ID Column To First Position Distance Record Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.created_date_label}    ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}         ${reports_page_locators.created_date_label}
    Sleep                            ${UL_TIME}

Drag And Drop Vehicle ID Column To Last Position From Reconciliation Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.toll_label}            ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}         ${reports_page_locators.toll_label}
    Sleep                            ${UL_TIME}

Drag And Drop Vehicle ID Column To First Position Reconciliation Page
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}         ${TIME}
    Wait Until Element Is Visible    ${reports_page_locators.jurisdiction_label}    ${TIME}
    Drag And Drop                    ${reports_page_locators.vehicle_label}         ${reports_page_locators.jurisdiction_label}
    Sleep                            ${UL_TIME}

Validate That The Table Headers Are In Default Position
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text        ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Jurisdiction\nVehicle ID\nToll (mi)\nNon-Toll (mi)\nTotal Distance (mi)\n% In Jurisdiction
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In New Position
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nToll (mi)\nNon-Toll (mi)\nTotal Distance (mi)\n% In Jurisdiction\nJurisdiction
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In Default Position From Fuel By Jurisdiction Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text        ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Jurisdiction\nVehicle ID\nFuel Purchased (gal)\nTotal Fuel (gal)\n% in Jurisdiction
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In New Position From Fuel By Jurisdiction Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nFuel Purchased (gal)\nTotal Fuel (gal)\n% in Jurisdiction\nJurisdiction
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In New Position From Fleet Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nToll (mi)\nNon-Toll (mi)\nTotal Distance (mi)\nTotal Fuel (gal)\n% of Total Distance\nJurisdiction
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In Default Position From Fleet Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Jurisdiction\nVehicle ID\nToll (mi)\nNon-Toll (mi)\nTotal Distance (mi)\nTotal Fuel (gal)\n% of Total Distance
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In New Position From Fuel Efficiency Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Distance (mi)\nFuel Purchased (gal)\nMPG\nVehicle ID
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In Default Position From Fuel Efficiency Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nDistance (mi)\nFuel Purchased (gal)\nMPG
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In Default Position From Fuel Purchase Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nCard #\nDate / Time\nVolume (gal)\nCity\nJurisdiction\nVendor\nSite\nInvoice
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In New Position From Fuel Purchase Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Card #\nDate / Time\nVolume (gal)\nCity\nJurisdiction\nVendor\nSite\nInvoice\nVehicle ID
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In Default Position From Distance Records Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nCreated Date\nCreated Time\nStart Odometer\nEnd Odometer\nNon-Toll (mi)\nToll Distance (mi)\nTotal Distance (mi)\nJurisdiction\nRecord Type
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In New Position From Distance Records Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}    ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Created Date\nCreated Time\nStart Odometer\nEnd Odometer\nNon-Toll (mi)\nToll Distance (mi)\nTotal Distance (mi)\nJurisdiction\nRecord Type\nVehicle ID
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In Default Position From Reconciliation Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}        ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Vehicle ID\nJurisdiction\nMPG\nFuel Tax Rate\nSurcharge\nTotal (mi)\nToll (mi)\nNon-Toll (mi)\nTaxable (mi)\nFuel Purchased (gal)\nFuel Required (gal)\nFuel Over/Short (gal)
    Should Be Equal As Strings    ${headers}    ${headers_default}

Validate That The Table Headers Are In New Position From Reconciliation Page
    Sleep    ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.headers_table}        ${TIME}
    ${headers} =     Get Text    ${reports_page_locators.headers_table}
    ${headers_default} =    Set Variable    Jurisdiction\nMPG\nFuel Tax Rate\nSurcharge\nTotal (mi)\nToll (mi)\nVehicle ID\nNon-Toll (mi)\nTaxable (mi)\nFuel Purchased (gal)\nFuel Required (gal)\nFuel Over/Short (gal)
    Should Be Equal As Strings    ${headers}    ${headers_default}

Verify That The Table Filter By Vehicle ID
    [Arguments]    ${vehicle_id}
    ${XPATH} =    list_xpath.Obtain Xpath Table Vehicle Column    ${vehicle_id}
    Wait Until Element Is Visible    ${XPATH}                     ${TIME}

Verify That The Table Data By Vehicle ID
    [Arguments]    ${date}
    ${XPATH} =    list_xpath.Obtain Xpath Table Date    ${date}
    Wait Until Element Is Visible    ${XPATH}           ${TIME}

Verify That The Table Data By Total Fuel
    [Arguments]    ${total}
    ${XPATH} =    list_xpath.Obtain Xpath Table Total    ${total}
    Wait Until Element Is Visible    ${XPATH}            ${TIME}

Verify That The Table Data By Fuel Purchased
    [Arguments]    ${vehicle}    ${fuel}
    ${XPATH} =    list_xpath.Obtain Xpath Table Fuel Purchased    ${vehicle}    ${fuel}
    Wait Until Element Is Visible    ${XPATH}           ${TIME}

Verify That The Table Data By Total Distance Or Toll
    [Arguments]    ${vehicle}    ${distance}
    ${XPATH} =    list_xpath.Obtain Xpath Table Distance    ${vehicle}    ${distance}
    Wait Until Element Is Visible    ${XPATH}           ${TIME}

Click On Export PDF Button
    Sleep                            ${UL_TIME}
    Wait Until Element Is Visible    ${reports_page_locators.pdf_export_button}    ${TIME}
    Click Element                    ${reports_page_locators.pdf_export_button}
    Sleep                            ${MD_TIME}

Click On Export CSV Button
    Wait Until Element Is Visible    ${reports_page_locators.csv_export_button}    ${TIME}
    Click Element                    ${reports_page_locators.csv_export_button}
    Sleep                            ${UL_TIME}

Obtain Current Date
    ${date} =    Get Current Date    UTC
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Obtain Current Date Reports
    [Arguments]    ${date} 
    ${date} =    list_xpath.Obtain Date Correct Format Report    ${date}
    [Return]    ${date}

Obtain a past Week of Date Reports 
    [Arguments]    ${date}
    ${date} =    list_xpath.Obtain Date Correct Format Report    ${date}
    [Return]    ${date}

Obtain Tomorrow Date
    ${date} =    Get Current Date    UTC    + 1 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Add Days Warning
    [Arguments]    ${date}
    ${XPATH} =    list_xpath.Obtain Xpath Add Days Warning    ${date}
    Wait Until Element Is Visible    ${XPATH}                 ${TIME}

End Date Warning 
    Wait Until Element Is Visible    ${reports_page_locators.end_date_warning}

Obtain a past Week of Date
    ${date} =    Get Current Date    UTC    - 5 day
    ${date} =    list_xpath.Obtain Date Correct Format    ${date}
    [Return]    ${date}

Verify Headers Start Date    
    [Arguments]    ${date}
    ${XPATH} =    list_xpath.Obtain Headers Date Report    ${date}
    Wait Until Element Is Visible    ${XPATH}                 ${TIME}

Verify Headers End Date
    [Arguments]    ${date}
    ${XPATH} =    list_xpath.Obtain Headers Date Report    ${date}
    Wait Until Element Is Visible    ${XPATH}                 ${TIME}
