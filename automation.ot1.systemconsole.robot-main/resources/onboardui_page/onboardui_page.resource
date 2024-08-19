
Load Onboard UI Home Page
    Wait Until Element Is Visible    ${onboardui_locators.entitlements_ui}    ${LO_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.accounts_ui}        ${LO_TIME}

Load Dashboard Page
    Wait Until Element Is Visible    ${onboardui_locators.first_page_ui}      ${LO_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.dashboard_title}    ${LO_TIME}

Navigate To Dashboard Page
    Wait Until Element Is Visible    ${onboardui_locators.dashboard_ui}       ${LO_TIME}
    Click Element                    ${onboardui_locators.dashboard_ui}

Navigate To Entitlements Page
    Wait Until Element Is Visible    ${onboardui_locators.entitlements_ui}    ${LO_TIME}
    Click Element                    ${onboardui_locators.entitlements_ui}

Navigate To Accounts Page
    Wait Until Element Is Visible    ${onboardui_locators.accounts_ui}        ${LO_TIME}
    Click Element                    ${onboardui_locators.accounts_ui}

Load Accounts Page
    Wait Until Element Is Visible    ${onboardui_locators.account_title}      ${LO_TIME}

Click On Add New Account
    Wait Until Element Is Visible    ${onboardui_locators.add_button}         ${LO_TIME}
    Click Element                    ${onboardui_locators.add_button}

Click On The Add Button For A New Entitlement
    Wait Until Element Is Visible    ${onboardui_locators.add_dashboard_button}     ${LO_TIME}
    Click Element                    ${onboardui_locators.add_dashboard_button}
    Wait Until Element Is Visible    ${onboardui_locators.select_business_title}    ${LO_TIME}

Veify That The Form To Add A New Account Loaded Correctly
    Wait Until Element Is Visible    ${onboardui_locators.account_name}             ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.dot_number}               ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.website}                  ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.address_1}                ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.city}                     ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.state}                    ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.country}                  ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.postal_code}              ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.phone_number_legal}       ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.first_name}               ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.last_name}                ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.phone_number_primary}     ${ME_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.email}                    ${ME_TIME}

Search An Account Accounts Page
    [Arguments]    ${ACCOUNT}
    Wait Until Element Is Visible    ${onboardui_locators.search_text}         ${ME_TIME}
    Input Text                       ${onboardui_locators.search_text}         ${ACCOUNT}
    Press Keys                       ${onboardui_locators.search_text}         ENTER
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.account_searched}    ${ME_TIME}

Search An Account from Manual Transaction Page
    [Arguments]    ${ACCOUNT}
    Wait Until Element Is Visible    ${onboardui_locators.search_transaction}    ${ME_TIME}
    Input Text                       ${onboardui_locators.search_transaction}    ${ACCOUNT}
    Press Keys                       ${onboardui_locators.search_transaction}    ENTER
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.account_searched_transaction}    ${ME_TIME}

Search An Account from System Console Onboarding Page
    [Arguments]    ${ACCOUNT}
    Wait Until Element Is Visible    ${onboardui_locators.search_transaction}    ${ME_TIME}
    Input Text                       ${onboardui_locators.search_transaction}    ${ACCOUNT}
    Press Keys                       ${onboardui_locators.search_transaction}    ENTER
    Sleep    ${SH_TIME}
    ${PATH} =    list_xpath.Get Transaction Card    ${ACCOUNT}
    Wait Until Element Is Visible    ${PATH}                                      ${ME_TIME}

Select Searched Account In Manual Transaction
    Wait Until Element Is Visible    ${onboardui_locators.radio_button_account}    ${ME_TIME}
    Click Element                    ${onboardui_locators.radio_button_account}

Click On The Submit Button From Manual Transaction
    Wait Until Element Is Visible    ${onboardui_locators.submit_button_transaction}    ${ME_TIME}
    Click Element                    ${onboardui_locators.submit_button_transaction}

Click On The Back Arrow From Manual Transaction
    Wait Until Element Is Visible    ${onboardui_locators.back_arrow}    ${ME_TIME}
    Click Element                    ${onboardui_locators.back_arrow}

Change to Completed Tab from System Console Onboarding Page
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${onboardui_locators.completed_tab}        ${ME_TIME}
    Click Element                    ${onboardui_locators.completed_tab}
    Wait Until Element Is Visible    ${onboardui_locators.transaction_total}    ${ME_TIME}

Change to In-Progress Tab from System Console Onboarding Page
    Wait Until Element Is Visible    ${onboardui_locators.inprogress_tab}      ${ME_TIME}
    Click Element                    ${onboardui_locators.inprogress_tab}
    Wait Until Element Is Visible    ${onboardui_locators.transaction_total}    ${ME_TIME}

Change to Failed Tab from System Console Onboarding Page
    Wait Until Element Is Visible    ${onboardui_locators.failed_tab}      ${ME_TIME}
    Click Element                    ${onboardui_locators.failed_tab}
    Wait Until Element Is Visible    ${onboardui_locators.transaction_total}    ${ME_TIME}

Fill In The Information To Create A New Account
    Wait Until Element Is Visible    ${onboardui_locators.account_details_title}    ${ME_TIME}
    ${ACCOUNT_NAME} =    Collections.Get From Dictionary    ${NEW}    ${ENVIRONMENT}
    ${DOT_NAME} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    DOT
    ${WEBSITE} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    WEBSITE
    ${ADDRESS1} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    STREET1
    ${CITY} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    CITY
    ${STATE} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    STATE
    ${POSTAL_CODE} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    POSTAL
    ${PHONE_NUMBER_LEGAL} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    PHONE_NUMBER_LEGAL
    ${FIRST_NAME} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    FIRST_NAME
    ${LAST_NAME} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    LAST_NAME
    ${PHONE_NUMBER_PRIMARY} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    PHONE_NUMBER_PRIMARY
    ${EMAIL} =    Collections.Get From Dictionary    ${ADD_ACCOUNT}    EMAIL
    Input Text    ${onboardui_locators.account_name}              ${ACCOUNT_NAME}
    Input Text    ${onboardui_locators.dot_number}                ${DOT_NAME}
    Input Text    ${onboardui_locators.website}                   ${WEBSITE}
    Input Text    ${onboardui_locators.address_1}                 ${ADDRESS1}
    Input Text    ${onboardui_locators.city}                      ${CITY}
    Input Text    ${onboardui_locators.state}                     ${STATE}
    Click Element    ${onboardui_locators.country}
    Click Element    ${onboardui_locators.country_selected}
    Input Text    ${onboardui_locators.postal_code}               ${POSTAL_CODE}
    Input Text    ${onboardui_locators.phone_number_legal}        ${PHONE_NUMBER_LEGAL}
    Input Text    ${onboardui_locators.first_name}                ${FIRST_NAME}
    Input Text    ${onboardui_locators.last_name}                 ${LAST_NAME}
    Input Text    ${onboardui_locators.phone_number_primary}      ${PHONE_NUMBER_PRIMARY}
    Input Text    ${onboardui_locators.email}                     ${EMAIL}
    Click Element    ${onboardui_locators.save_button}

Obtain The New Business Account ID
    Wait Until Element Is Visible     ${onboardui_locators.business_account_id}    ${ME_TIME}
    ${BA} =    Get Value              ${onboardui_locators.business_account_id}
    Log    ${BA}

Click On Account From Accounts Page
    Wait Until Element Is Visible    ${onboardui_locators.account_searched}       ${ME_TIME}
    Click Element                    ${onboardui_locators.account_searched}
    Wait Until Element Is Visible    ${onboardui_locators.business_account_id}    ${ME_TIME}

Add New Entitlements In A New Accout from Accounts Page
    [Documentation]    Three new entitlements are added, one of which
    ...    requires going through the Completed tab, this three are:
    ...    OT1-EP-AMGC, OT1-GM and OT1-CER
    Wait Until Element Is Visible    ${onboardui_locators.firts_entitlement}    ${ME_TIME}
    # Click Element    ${onboardui_locators._OT1_EP_AMGC}
    # Click Element    ${onboardui_locators._OT1_GM}
    # Click Element    ${onboardui_locators._OT1_CER}
    # Click Element    ${onboardui_locators._OT1_TM}
    Click Element    ${onboardui_locators._ame}
    Sleep    ${SH_TIME}

Add New Entitlements In An Existing Accout from Accounts Page
    [Documentation]    One new entitlements are added, one of which
    ...    requires going through the Completed tab, this one is:
    ...    r, aa
    Wait Until Element Is Visible    ${onboardui_locators.firts_entitlement}    ${ME_TIME}
    # Click Element    ${onboardui_locators._aa}
    # Click Element    ${onboardui_locators._h}
    # Click Element    ${onboardui_locators._r}
    Click Element    ${onboardui_locators._wsi}
    Sleep    ${SH_TIME}

Click On Save Button from Accounts Page
    Wait Until Element Is Visible    ${onboardui_locators.save_button}    ${ME_TIME}
    Click Element                    ${onboardui_locators.save_button}

Click On The Second Save Button from Accounts Page
    Wait Until Element Is Visible    ${onboardui_locators.save_entitlement_button}    ${ME_TIME}
    Click Element                    ${onboardui_locators.save_entitlement_button}

Click On The First Existing Account Details
    Wait Until Element Is Visible    ${onboardui_locators.details_button1}        ${ME_TIME}
    Click Element                    ${onboardui_locators.details_button1}
    Wait Until Element Is Visible    ${onboardui_locators.business_account_id}    ${ME_TIME}

Verify That The Entitlement Is In The New Entitlements Row
    [Arguments]    ${ENTITLMENT_NAME}
    Wait Until Element Is Visible    ${onboardui_locators.new_entitlements_row1}    ${ME_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View         ${onboardui_locators.new_entitlements_row1}
    Element Text Should Be           ${onboardui_locators.new_entitlements_row1}    ${ENTITLMENT_NAME}

If It Return To The Menu
    [Arguments]    ${ACCOUNT}
    Run Keyword And Ignore Error   Run Keywords   
    ...    Load Onboard UI Home Page    AND
    ...    Navigate To Accounts Page    AND
    ...    Load Accounts Page           AND
    ...    Search An Account Accounts Page    ${ACCOUNT}    AND
    ...    Click On Account From Accounts Page
Search For an Entitlement
    [Arguments]    ${ENTITLEMENT}
    Wait Until Page Contains Element    ${onboardui_locators.search_entitlement}    ${LO_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LO_TIME}
    ${PERMISSION} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    Input Text    ${onboardui_locators.search_entitlement}    ${PERMISSION}
    Press Keys    ${onboardui_locators.search_entitlement}    ENTER

Verify Entitlement Page Contains The Entitlement That We Searched
    [Arguments]    ${ENTITLEMENT}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    ${XPATH_ELEMENT} =    Catenate    SEPARATOR=    //td[contains(.,'    ${ENTITLEMENT_VALUE}    ')]
    Page Should Contain Element    ${XPATH_ELEMENT}
Verify Entitlement Page Does Not Contains The Entitlement That We Searched
    [Arguments]    ${ENTITLEMENT}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    ${XPATH_ELEMENT} =    Catenate    SEPARATOR=    //td[contains(.,'    ${ENTITLEMENT_VALUE}    ')]
    Page Should Not Contain Element    ${XPATH_ELEMENT}

Add Entitlement Id At Create New Entitlement Form Onboarding
    [Arguments]    ${ID}
    Wait Until Page Contains Element     ${onboardui_locators.entitlement_id}    ${LO_TIME}
    ${GROUP_ID} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ID}
    Input Text    ${onboardui_locators.entitlement_id}    ${GROUP_ID}

Click On Add New Registry At Entitlements Page
    Wait Until Element Is Visible    ${onboardui_locators.add_dashboard_button}     ${LO_TIME}
    Click Element                    ${onboardui_locators.add_dashboard_button}
    Wait Until Element Is Visible    ${onboardui_locators.select_add_registry_title}    ${LO_TIME}  

Select Entitlement Provisioning Type At Create New Entitlement Form Onboarding
    [Arguments]        ${LEVEL_PROV_TYPE}
    Expand Provisioning Type List Onboarding
    Select Provisioning Type At Create New Entitlement Form Onboarding    ${LEVEL_PROV_TYPE}

Select Provisioning Type At Create New Entitlement Form Onboarding
    [Arguments]    ${LEVEL_PROV_TYPE}
    ${PROV_TYPE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${LEVEL_PROV_TYPE}
    ${XPATH_PROV_TYPE} =    list_xpath.Obtain Xpath For Entitlement Prov Type    ${PROV_TYPE}
    Click Element    ${XPATH_PROV_TYPE}

Expand Provisioning Type List Onboarding
    Wait Until Page Contains Element     ${onboardui_locators.prov_type_list}    ${LO_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View    ${onboardui_locators.prov_type_list}
    Click Element    ${onboardui_locators.prov_type_list}

Select Entitlement Category At Create New Entitlement Form Onboarding
    [Arguments]    ${CATEGORY}
    Expand Category List Onboarding
    Find Category Inside Category List And Select It Onboarding    ${CATEGORY}

Expand Category List Onboarding
    Wait Until Page Contains Element     ${onboardui_locators.category_list}    ${LO_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View    ${onboardui_locators.category_list}
    Click Element    ${onboardui_locators.category_list}

Find Category Inside Category List And Select It Onboarding
    [Arguments]    ${CATEGORY}
    Sleep    ${SH_TIME}
    ${CATEGORY} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}    ${CATEGORY}
    ${XPATH_CATEGORY} =    list_xpath.Obtain Xpath For Entitlement Type    ${CATEGORY}
    Click Element    ${XPATH_CATEGORY}

Add Name At Create New Entitlement Form Onboarding
    [Arguments]    ${NAME}
    Wait Until Page Contains Element     ${onboardui_locators.name_entitlements}    ${LO_TIME}
    ${GROUP_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${NAME}
    Input Text    ${onboardui_locators.name_entitlements}    ${GROUP_NAME}

Create New Entilement For Deletion
    Add Entitlement Id At Create New Entitlement Form Onboarding    GROUP_ID_FOR_DELETION
    Add Name At Create New Entitlement Form Onboarding    GROUP_NAME_FOR_DELETION
    entitlements_page.Select Entitlement Type At Create New Entitlement Form    GROUP_TYPE_FOR_DELETION
    Select Entitlement Provisioning Type At Create New Entitlement Form Onboarding    GROUP_PROV_FOR_DELETION
    Select Entitlement Category At Create New Entitlement Form Onboarding    GROUP_CATEGORY_FOR_DELETION
    entitlements_page.Save New Entitlement Form
    Confirm New Entitlement Was Created Or Edited Onboarding

Confirm New Entitlement Was Created Or Edited Onboarding
    Wait Until Page Contains Element     ${entitlements_page_locators.success_message}    ${LO_TIME}
    Click Element    ${entitlements_page_locators.ok_button}

Click On Searched Entitlement on Entitlement Page
    [Arguments]    ${ENTITLEMENT}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    ${XPATH_ELEMENT} =    Catenate    SEPARATOR=    //td[contains(.,'    ${ENTITLEMENT_VALUE}    ')]
    Page Should Contain Element    ${XPATH_ELEMENT}
    Sleep    ${SH_TIME}
    Click Element     ${XPATH_ELEMENT}
Click On Delete Button At Entitlements Page
    Wait Until Page Contains Element     ${onboardui_locators.delete_entitlement}    ${ME_TIME}
    Click Element    ${onboardui_locators.delete_entitlement}

Click On Yes Button at Delete Confirmation
    Wait Until Page Contains Element     ${onboardui_locators.yes_button_entitlement}    ${ME_TIME}
    Click Element    ${onboardui_locators.yes_button_entitlement}

Verify Includes Section Is Unselectable At Entitlement Page
    Wait Until Page Contains Element    ${onboardui_locators.includes_input_entitlement}    ${ME_TIME}
    Run Keyword And Expect Error    *    Input Text    ${onboardui_locators.includes_input_entitlement}    Test

Create New Entilement For Includes verify
    Add Entitlement Id At Create New Entitlement Form Onboarding    GROUP_ID_FOR_INCLUDES
    Add Name At Create New Entitlement Form Onboarding    GROUP_NAME_FOR_INCLUDES
    entitlements_page.Select Entitlement Type At Create New Entitlement Form    GROUP_TYPE_FOR_INCLUDES
    Select Entitlement Provisioning Type At Create New Entitlement Form Onboarding    GROUP_PROV_FOR_INCLUDES
    Select Entitlement Category At Create New Entitlement Form Onboarding    GROUP_CATEGORY_FOR_INCLUDES
    Verify Automatically Populates Similar Results
    Select Entitlement Includes At Create New Entitlement Form Onboarding
    entitlements_page.Save New Entitlement Form
    Confirm New Entitlement Was Created Or Edited Onboarding

Verify Automatically Populates Similar Results
    Wait Until Page Contains Element    ${onboardui_locators.includes_selector_entitlement}    ${ME_TIME}
    Click Element    ${onboardui_locators.includes_selector_entitlement} 
    Wait Until Page Contains Element    ${onboardui_locators.includes_input_entitlement}    ${ME_TIME}
    Input text    ${onboardui_locators.includes_input_entitlement}     OT1-EP-AMGC
    ${INCLUDE_PATH} =    Xpath Obtainer For Includes Verify    OT1-EP-AMGC
    Page Should Contain Element   ${INCLUDE_PATH}
    Input text    ${onboardui_locators.includes_input_entitlement}     Dolphin
    ${INCLUDE_PATH} =    Xpath Obtainer For Includes Verify    Dolphin
    Page Should Not Contain Element   ${INCLUDE_PATH}
    Press Keys    None    ESC

Xpath Obtainer For Includes Verify
    [Arguments]    ${NAME}
    ${XPATH_ELEMENT} =    Catenate    SEPARATOR=    //span[contains(.,'    ${NAME}    ')]
    [Return]    ${XPATH_ELEMENT}

Select Entitlement Includes At Create New Entitlement Form Onboarding
    Wait Until Page Contains Element    ${onboardui_locators.includes_selector_entitlement}    ${ME_TIME}
    Click Element    ${onboardui_locators.includes_selector_entitlement} 
    Wait Until Page Contains Element    ${onboardui_locators.includes_input_entitlement}    ${ME_TIME}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_INCLUDES_FOR_INCLUDES
    Input text    ${onboardui_locators.includes_input_entitlement}       ${ENTITLEMENT_VALUE}  
    ${INCLUDE_PATH} =    Xpath Obtainer For Includes Verify     ${ENTITLEMENT_VALUE}
    Wait Until Page Contains Element    ${INCLUDE_PATH}    ${ME_TIME}
    Click Element    ${INCLUDE_PATH}