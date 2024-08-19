
Load The System Console Onboarding Page
    Wait Until Element Is Visible    ${onboarding_page_locators.title}    ${LG_TIME}

Navigate To The System Console Onboarding Page
    Click Element                    ${onboarding_page_locators.onboarding_tab}
    Wait Until Element Is Visible    ${onboarding_page_locators.onboarding_iframe}    ${LG_TIME}

Search An Account from System Console Onboarding Page
    [Arguments]    ${ACCOUNT}
    Wait Until Element Is Visible    ${onboarding_page_locators.search_text}    ${LG_TIME}
    Input Text                       ${onboarding_page_locators.search_text}    ${ACCOUNT}
    Press Keys                       ${onboarding_page_locators.search_text}    ENTER
    Sleep    ${SH_TIME}
    ${PATH} =    list_xpath.Get Transaction Card    ${ACCOUNT}
    Wait Until Element Is Visible    ${PATH}    ${LG_TIME}

Select Main Iframe from System Console Onboarding Page
    Wait Until Element Is Visible    ${onboarding_page_locators.onboarding_iframe}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.onboarding_iframe}    ${LG_TIME}
    Select Frame                     ${onboarding_page_locators.onboarding_iframe}

Unselect Main Iframe from System Console Onboarding Page
    Unselect Frame

Change to In-Progress Tab from System Console Onboarding Page
    Wait Until Element Is Visible    ${onboarding_page_locators.in_progress_tab}      ${LG_TIME}
    Click Element                    ${onboarding_page_locators.in_progress_tab}
    Wait Until Element Is Visible    ${onboarding_page_locators.transaction_total}    ${LG_TIME}

Change to Completed Tab from System Console Onboarding Page
    Wait Until Element Is Visible    ${onboarding_page_locators.completed_tab}        ${LG_TIME}
    Click Element                    ${onboarding_page_locators.completed_tab}
    Wait Until Element Is Visible    ${onboarding_page_locators.transaction_total}    ${LG_TIME}

Change to Failed Tab from System Console Onboarding Page
    Wait Until Element Is Visible    ${onboarding_page_locators.failed_tab}           ${LG_TIME}
    Click Element                    ${onboarding_page_locators.failed_tab}
    Wait Until Element Is Visible    ${onboarding_page_locators.transaction_total}    ${LG_TIME}

Verify That The New Account Is Completed Tab
    [Arguments]    ${ACCOUNT}
    ${PATH} =    list_xpath.Get Transaction Card    ${ACCOUNT}
    Wait Until Element Is Visible    ${PATH}    ${LG_TIME}

Verify That The Existing Account Is Completed Tab
    [Arguments]    ${ACCOUNT}
    ${PATH} =    list_xpath.Get Transaction Card    ${ACCOUNT}
    Wait Until Element Is Visible    ${PATH}    ${LG_TIME}

Click On The First Existing Account Details
    Wait Until Element Is Visible    ${onboarding_page_locators.details_button1}        ${LG_TIME}
    Scroll Element Into View         ${onboarding_page_locators.details_button1}
    Wait Until Element Is Visible    ${onboarding_page_locators.footer_title}           ${LG_TIME}
    Scroll Element Into View         ${onboarding_page_locators.footer_title}
    Click Element                    ${onboarding_page_locators.details_button1}
    Wait Until Element Is Visible    ${onboarding_page_locators.business_account_id}    ${LG_TIME}

Verify That The Entitlement Is In The New Entitlements Row
    [Arguments]    ${ENTITLMENT_NAME}
    Wait Until Element Is Visible    ${onboarding_page_locators.new_entitlements_row1}    ${LG_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View         ${onboarding_page_locators.new_entitlements_row1}
    Element Text Should Be           ${onboarding_page_locators.new_entitlements_row1}    ${ENTITLMENT_NAME}

Verify That The Txn Status Is InProgress 1
    Wait Until Element Is Visible    ${onboarding_page_locators.txn_status}                    ${LG_TIME}
    ${VALUE} =    Get Value          ${onboarding_page_locators.txn_status}
    Should Be Equal As Strings       ${VALUE}   IN-PROGRESS
    Wait Until Element Is Visible    ${onboarding_page_locators.alternate_accounts_maps}       ${LG_TIME}
    # Wait Until Element Is Visible    ${onboarding_page_locators.existing_entitlements_row1}    ${LG_TIME}

Verify That The Txn Status Is InProgress 2
    Run Keyword And Ignore Error    Scroll Element Into View         ${onboarding_page_locators.new_entitlements_row1}
    Wait Until Element Is Visible    ${onboarding_page_locators.new_entitlements_row1}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.log_row1}                 ${LG_TIME}

Verify That The Txn Status Is Completed 1
    Wait Until Element Is Visible    ${onboarding_page_locators.txn_status}                    ${LG_TIME}
    ${VALUE} =    Get Value          ${onboarding_page_locators.txn_status}
    Should Be Equal As Strings       ${VALUE}   COMPLETED
    Wait Until Element Is Visible    ${onboarding_page_locators.alternate_accounts_maps}       ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.existing_entitlements_row1}    ${LG_TIME}

Verify That The Txn Status Is Completed 2
    Run Keyword And Ignore Error    Scroll Element Into View         ${onboarding_page_locators.new_entitlements_row1}
    Wait Until Element Is Visible    ${onboarding_page_locators.new_entitlements_row1}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.log_row1}                 ${LG_TIME}

Verify That The Txn Status Is Failed 1
    Wait Until Element Is Visible    ${onboarding_page_locators.txn_status}                    ${LG_TIME}
    ${VALUE} =    Get Value          ${onboarding_page_locators.txn_status}
    Should Be Equal As Strings       ${VALUE}   FAILED
    Wait Until Element Is Visible    ${onboarding_page_locators.alternate_accounts_maps}       ${LG_TIME}

Verify That The Txn Status Is Failed 2
    Run Keyword And Ignore Error    Scroll Element Into View         ${onboarding_page_locators.new_entitlements_row1}
    Wait Until Element Is Visible    ${onboarding_page_locators.log_row1}                 ${LG_TIME}

Valitade Elements That Will Be Validated
    [Documentation]    Find the following elements
    ...    Account Name, TXN ID, Start, ERP, NMC, ONE, RNA, SP,
    ...    XRS, secondary, progress bar, status Inprogress, details button
    [Arguments]    ${ACCOUNT}    ${STATUS}
    ${PATH} =    list_xpath.Get Transaction Card    ${ACCOUNT}
    Wait Until Element Is Visible    ${PATH}                                        ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.txn_id}             ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.start}              ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.erp}                ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.nmc}                ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.one}                ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.rna}                ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.sp}                 ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.xrs}                ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.secondary}          ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.progress_bar1}      ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.status}             ${LG_TIME}
    Element Text Should Be           ${onboarding_page_locators.status}             ${STATUS}
    Wait Until Element Is Visible    ${onboarding_page_locators.details_button1}    ${LG_TIME}

Click On The Add Button For A New Entitlement
    Wait Until Element Is Visible    ${onboarding_page_locators.add_button}               ${LG_TIME}
    Click Element                    ${onboarding_page_locators.add_button}
    Wait Until Element Is Visible    ${onboarding_page_locators.select_business_title}    ${LG_TIME}

Search An Account from Manual Transaction Page
    [Arguments]    ${ACCOUNT}
    Wait Until Element Is Visible    ${onboarding_page_locators.search_transaction}    ${LG_TIME}
    Input Text                       ${onboarding_page_locators.search_transaction}    ${ACCOUNT}
    Press Keys                       ${onboarding_page_locators.search_transaction}    ENTER
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.account_searched_transaction}    ${LG_TIME}

Select Searched Account In Manual Transaction
    Wait Until Element Is Visible    ${onboarding_page_locators.radio_button_account}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.radio_button_account}

Select OT1-HOS From Type Of Transaction
    Wait Until Page Contains Element     ${onboarding_page_locators.radio_button_type1}   
    Click Element                        ${onboarding_page_locators.radio_button_type1}
    Run Keyword And Ignore Error    Scroll Element Into View             ${onboarding_page_locators.radio_button_type1}
    Wait Until Element Is Visible        ${onboarding_page_locators.radio_button_type1}    ${LG_TIME}
    Click Element                        ${onboarding_page_locators.radio_button_type1}
    
Select OT1-GM From Type Of Transaction
    Wait Until Page Contains Element      ${onboarding_page_locators.radio_button_type2}   
    Click Element                         ${onboarding_page_locators.radio_button_type2}
    Run Keyword And Ignore Error    Scroll Element Into View              ${onboarding_page_locators.radio_button_type2}
    Wait Until Element Is Visible         ${onboarding_page_locators.radio_button_type2}    ${LG_TIME}
    Click Element                         ${onboarding_page_locators.radio_button_type2}

Click On The Submit Button From Manual Transaction
    Wait Until Element Is Visible    ${onboarding_page_locators.submit_button_transaction}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.submit_button_transaction}

Click On The Cancel Button From Manual Transaction
    Wait Until Element Is Visible    ${onboarding_page_locators.cancel_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.cancel_button}

Click On The Yes and OK Button From Manual Transaction
    Wait Until Element Is Visible    ${onboarding_page_locators.message_info}       ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.yes_button}         ${LG_TIME}
    Click Element                    ${onboarding_page_locators.yes_button}
    Wait Until Element Is Visible    ${onboarding_page_locators.success_message}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.ok_button}

Click On The Yes and OK Button From Manual Transaction if it appears
    Run Keyword And Ignore Error    Click On The Yes and OK Button From Manual Transaction

Click OK button in case entitlement already exists for account
    Wait Until Element Is Visible    ${onboarding_page_locators.message_info} 
    Click Element                    ${onboarding_page_locators.ok_button}


Click OK button in case entitlement already exists for account if it appears
    Run Keyword And Ignore Error    Click OK button in case entitlement already exists for account

Click On The No Button From Manual Transaction
    Wait Until Element Is Visible    ${onboarding_page_locators.message_info}     ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.no_button}        ${LG_TIME}
    Click Element                    ${onboarding_page_locators.no_button}

Click On The Back Arrow From Manual Transaction
    Wait Until Element Is Visible    ${onboarding_page_locators.back_arrow}    ${LG_TIME}
    Scroll Element Into View         ${onboarding_page_locators.back_arrow}
    Click Element                    ${onboarding_page_locators.back_arrow}

Select The Enable Option From The Pending_Setup Menu
    Wait Until Element Is Visible    ${onboarding_page_locators.pending_setup_button}    ${LG_TIME}
    Scroll Element Into View         ${onboarding_page_locators.pending_setup_button}
    Click Element                    ${onboarding_page_locators.pending_setup_button}
    Wait Until Element Is Visible    ${onboarding_page_locators.enable_selection}        ${LG_TIME}
    Click Element                    ${onboarding_page_locators.enable_selection}
    Click Element                    ${onboarding_page_locators.enable2_selection}
    Click Element                    ${onboarding_page_locators.save_button_form}
    Sleep    ${SH_TIME}
    
Back To In-Progress Page From Onboarding Tab
    Wait Until Element Is Visible    ${onboarding_page_locators.back_arrow_details}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.back_arrow_details}
    Sleep    ${LONG_TIME}

Click On Arrow Down Entitlement That It Was Enabled Manually And Expand It
    [Documentation]    Should retrieve the info of the user that enabled the entitlement
    ...    that is Email First Name and Last Name
    Wait Until Element Is Visible    ${onboarding_page_locators.new_entitlment_arrow_down}    ${LG_TIME}    
    Click Element                    ${onboarding_page_locators.new_entitlment_arrow_down}
    Sleep    ${MEDIUM_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View         ${onboarding_page_locators.email_input_text}
    Wait Until Element Is Visible    ${onboarding_page_locators.email_input_text}             ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.fn_input_text}                ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.ln_input_text}                ${LG_TIME}

Compare Total Transactions And Total Results
    ${VALUE} =    Get Text    ${onboarding_page_locators.transaction_total}
    ${CONCATED} =    list_xpath.Convert Number To Total Results    ${VALUE}
    Element Text Should Be     ${onboarding_page_locators.results_total}    ${CONCATED}

Click On Kebab Button
    Wait Until Element Is Visible    ${onboarding_page_locators.kebab_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.kebab_button}

Click On Refresh Button
    Wait Until Element Is Visible    ${onboarding_page_locators.refresh_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.refresh_button}

Verified Platforms In Listbox From Kebab Button
    Wait Until Element Is Visible    ${onboarding_page_locators.erp_response_button}       ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.rna_response_button}       ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.xrs_response_button}       ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.es_hos_response_button}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.es_nmc_response_button}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.es_sp_response_button}     ${LG_TIME}

Click On ERP Response Option
    Wait Until Element Is Visible    ${onboarding_page_locators.erp_response_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.erp_response_button}

Click On RNA Response Option
    Wait Until Element Is Visible    ${onboarding_page_locators.rna_response_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.rna_response_button}

Click On XRS Response Option
    Wait Until Element Is Visible    ${onboarding_page_locators.xrs_response_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.xrs_response_button}

Click On ES HOS Response Option
    Wait Until Element Is Visible    ${onboarding_page_locators.es_hos_response_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.es_hos_response_button}

Click On ES NMC Response Option
    Wait Until Element Is Visible    ${onboarding_page_locators.es_nmc_response_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.es_nmc_response_button}

Click On ES SP Response Option
    Wait Until Element Is Visible    ${onboarding_page_locators.es_sp_response_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.es_sp_response_button}

Click On Save Button From Alternate Account Menu
    Wait Until Element Is Visible    ${onboarding_page_locators.save_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.save_button}

Click On Cancel Button From Alternate Account Menu
    Wait Until Element Is Visible    ${onboarding_page_locators.cancel_button}    ${LG_TIME}
    Click Element                    ${onboarding_page_locators.cancel_button}

Verified ERP Response Pop-Up Menu Details
    Wait Until Element Is Visible    ${onboarding_page_locators.business_account_id_input}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.customer_id_input}            ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.status_listbox}               ${LG_TIME}

Verified RNA Response Pop-Up Menu Details
    Wait Until Element Is Visible    ${onboarding_page_locators.business_account_id_input}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.status_listbox}               ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.rna_id_input}                 ${LG_TIME}

Verified XRS Response Pop-Up Menu Details
    Wait Until Element Is Visible    ${onboarding_page_locators.business_account_id_input}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.status_listbox}               ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.xrs_id_input}                 ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.xrs_instance_input}           ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.xrs_login_id_input}           ${LG_TIME}

Verified ES HOS Response Pop-Up Menu Details
    Wait Until Element Is Visible    ${onboarding_page_locators.business_account_id_input}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.status_listbox}               ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.hos_id_input}                 ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.hos_instance_id_input}        ${LG_TIME}

Verified ES NMC Response Pop-Up Menu Details
    Wait Until Element Is Visible    ${onboarding_page_locators.business_account_id_input}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.status_listbox}               ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.nmc_account_id_input}         ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.nmc_instance_id_input}        ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.nmc_hub_id_input}             ${LG_TIME}

Verified ES SP Response Pop-Up Menu Details
    Wait Until Element Is Visible    ${onboarding_page_locators.business_account_id_input}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.status_listbox}               ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.sp_id_input}                  ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.sp_instance_id_input}         ${LG_TIME}

Verify Transaction Details Fields
    Wait Until Element Is Visible    ${onboarding_page_locators.business_account_id}            ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.txn_number}                     ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.txn_date}                       ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.txn_type}                       ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.client_id}                      ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.comment}                        ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.alternate_accounts_maps}        ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.existing_entitlements_label}    ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.new_entitlements_label}         ${LG_TIME}
    Wait Until Element Is Visible    ${onboarding_page_locators.log_label}                      ${LG_TIME}