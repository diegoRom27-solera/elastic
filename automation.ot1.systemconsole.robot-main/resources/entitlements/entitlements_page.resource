
Load The System Console Entitlements Page
    Wait Until Element Is Visible    ${entitlements_page_locators.title}    ${LG_TIME}

Navigate To The System Console Entitlements Page
    Click Element                    ${entitlements_page_locators.entitlements_tab}
    Wait Until Element Is Visible    ${entitlements_page_locators.entitlements_iframe}    ${LG_TIME}
    Click Element                    ${entitlements_page_locators.back_button}

Select Main Iframe from System Console Entitlements Page
    Wait Until Element Is Visible    ${entitlements_page_locators.entitlements_iframe}    ${LG_TIME}
    Select Frame                     ${entitlements_page_locators.entitlements_iframe}
    Wait Until Element Is Visible    ${entitlements_page_locators.title}                      ${LG_TIME}

Unselect Main Iframe from System Console Entitlements Page
    Unselect Frame

Click On Account Name from System Console Entitlements Page
    Wait Until Element Is Visible    ${entitlements_page_locators.account_searched}    ${LG_TIME}
    Click Element                    ${entitlements_page_locators.account_searched}

Click On Add New Entitlement from System Console Entitlements Or Permission Page
    Sleep    ${SH_TIME}
    Wait Until Page Contains Element     ${entitlements_page_locators.add_button}    ${LG_TIME}
    Click Element     ${entitlements_page_locators.add_button}

Add Name At Create New Entitlement Form
    [Arguments]    ${NAME}
    Wait Until Page Contains Element     ${entitlements_page_locators.name}    ${LG_TIME}
    ${GROUP_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${NAME}
    Input Text    ${entitlements_page_locators.name}    ${GROUP_NAME}

Add Entitlement Id At Create New Entitlement Form
    [Arguments]    ${ID}
    Wait Until Page Contains Element     ${entitlements_page_locators.entitlement_id}    ${LG_TIME}
    ${GROUP_ID} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ID}
    Input Text    ${entitlements_page_locators.entitlement_id}    ${GROUP_ID}


Add Entitlement Description At Create New Entitlement Form
    Wait Until Page Contains Element     ${entitlements_page_locators.description}    ${LG_TIME}
    ${GROUP_DESCRIPTION} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_DESCRIPTION
    Input Text    ${entitlements_page_locators.description}    ${GROUP_DESCRIPTION}

Select Entitlement Type At Create New Entitlement Form
    [Arguments]    ${LEVEL_TYPE}
    Expand Type List
    Find Type Inside Type List And Select It    ${LEVEL_TYPE}

Expand Type List
    Wait Until Page Contains Element     ${entitlements_page_locators.type_list}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.type_list}

Find Type Inside Type List And Select It
    [Arguments]    ${LEVEL_TYPE}
    ${TYPE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${LEVEL_TYPE}
    ${XPATH_TYPE} =    list_xpath.Obtain Xpath For Entitlement Type    ${TYPE}
    Run Keyword And Ignore Error    Scroll Element Into View   ${XPATH_TYPE} 
    Wait Until Page Contains Element    ${XPATH_TYPE}    ${LG_TIME}
    Sleep    2
    Click Element    ${XPATH_TYPE}

Select Entitlement Provisioning Type At Create New Entitlement Form
    [Arguments]    ${LEVEL_PROV_TYPE}
    Expand Provisioning Type List
    Select Provisioning Type At Create New Entitlement Form    ${LEVEL_PROV_TYPE}

Expand Provisioning Type List
    Wait Until Page Contains Element     ${entitlements_page_locators.prov_type_list}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.prov_type_list}

Select Provisioning Type At Create New Entitlement Form
    [Arguments]    ${LEVEL_PROV_TYPE}
    ${PROV_TYPE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${LEVEL_PROV_TYPE}
    ${XPATH_PROV_TYPE} =    list_xpath.Obtain Xpath For Entitlement Prov Type    ${PROV_TYPE}
    Wait Until Page Contains Element    ${XPATH_PROV_TYPE}    ${LG_TIME}
    Sleep    2
    Click Element    ${XPATH_PROV_TYPE}

Select Entitlement Parent At Create New Entitlement Form
    [Arguments]    ${PARENT_DICTIONARY}
    Expand Parents List
    Select Parent At Create New Entitlement Form    ${PARENT_DICTIONARY}

Expand Parents List
    Wait Until Page Contains Element     ${entitlements_page_locators.parent_list}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.parent_list}

Select Parent At Create New Entitlement Form
    [Arguments]     ${PARENT_DICTIONARY}
    ${PARENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PARENT_DICTIONARY}
    ${XPATH_PARENT} =    list_xpath.Obtain Xpath For Entitlement Parent    ${PARENT}
    Wait Until Page Contains Element    ${XPATH_PARENT}    ${LG_TIME}
    Sleep    2
    Click Element    ${XPATH_PARENT}

Select Entitlement Category At Create New Entitlement Form
    [Arguments]    ${CATEGORY}
    Expand Category List
    Find Category Inside Category List And Select It    ${CATEGORY}

Expand Category List
    Wait Until Page Contains Element     ${entitlements_page_locators.category_list}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.category_list}

Find Category Inside Category List And Select It
    [Arguments]    ${CATEGORY}
    ${CATEGORY} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}    ${CATEGORY}
    ${XPATH_CATEGORY} =    list_xpath.Obtain Xpath For Entitlement Type    ${CATEGORY}
    Wait Until Page Contains Element    ${XPATH_CATEGORY}    ${LG_TIME}
    Sleep    2
    Click Element    ${XPATH_CATEGORY}

Select Entitlement Elemets To Include At Create New Entitlement Form
    [Arguments]    ${ELEMENTS_TO_INCLUDE}
    Expand Includes List
    Select Elemets To Include At Create New Entitlement Form    ${ELEMENTS_TO_INCLUDE}
    Press Keys    None    ESC

Expand Includes List
    Wait Until Page Contains Element     ${entitlements_page_locators.includes_list}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.includes_list}

Select Elemets To Include At Create New Entitlement Form
    [Arguments]    ${ELEMENTS_TO_INCLUDE}
    ${INCLUDE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ELEMENTS_TO_INCLUDE}
    ${XPATH_INCLUDES} =    list_xpath.Obtain Xpath For Entitlement Element To Include    ${INCLUDE}
    Wait Until Page Contains Element    ${XPATH_INCLUDES}    ${LG_TIME}
    Sleep    2
    Click Element    ${XPATH_INCLUDES}

Select Entitlement Elemets That Require At Create New Entitlement Form
    [Arguments]    ${REQUIRES}
    Expand Requires List
    Select Elemets Required At Create New Entitlement Form    ${REQUIRES}
    Press Keys    None    ESC
    
Expand Requires List
    Wait Until Page Contains Element     ${entitlements_page_locators.requires_list}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.requires_list}

Select Elemets Required At Create New Entitlement Form
    [Arguments]    ${REQUIRES}
    ${REQUIRED} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${REQUIRES}
    ${XPATH_REQUIRED} =    list_xpath.Obtain Xpath For Entitlement Element To Include    ${REQUIRED}
    Wait Until Page Contains Element    ${XPATH_REQUIRED}    ${LG_TIME}
    Sleep    2
    Click Element    ${XPATH_REQUIRED}

Save New Entitlement Form
    Wait Until Page Contains Element     ${entitlements_page_locators.save_button}    ${LG_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View    ${entitlements_page_locators.save_button}
    Click Element    ${entitlements_page_locators.save_button}

Confirm New Entitlement Was Created Or Edited
    Wait Until Page Contains Element     ${entitlements_page_locators.success_message}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.ok_button}
    # IF    "${BROWSER}"=="ff"
    #     Log    Firefox browser
    # ELSE
    #     Sleep    ${SH_TIME}
    #     Wait Until Page Contains Element     ${entitlements_page_locators.success_message}    ${LG_TIME}
    #     Click Element    ${entitlements_page_locators.ok_button}
    # END

Search The Platform Entitlement on the Entitlement Tree
    ${PLATFORM_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_FIRST_LEVEL
    ${XPATH_PLATFORM} =    list_xpath.Obtain Xpath For Entitlement On Tree    ${PLATFORM_ENTITLEMENT}
    Wait Until Page Contains Element    ${XPATH_PLATFORM}    ${LG_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View    ${XPATH_PLATFORM}
    Click Element    ${XPATH_PLATFORM}

Search The Application Entitlement on the Entitlement Tree
    ${PLATFORM_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_FIRST_LEVEL
    ${APPLICATION_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_SECOND_LEVEL
    ${XPATH_PLATFORM_BUTTON} =    list_xpath.Obtain Xpath For Entitlement On Tree Expand Button    ${PLATFORM_ENTITLEMENT}
    ${XPATH_APPLICATION} =    list_xpath.Obtain Xpath For Entitlement On Tree    ${APPLICATION_ENTITLEMENT}
    Wait Until Page Contains Element    ${XPATH_PLATFORM_BUTTON}    ${LG_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View    ${XPATH_PLATFORM_BUTTON}
    Click Element    ${XPATH_PLATFORM_BUTTON}
    Click Element    ${XPATH_APPLICATION}

Search The Component Entitlement on the Entitlement Tree
    ${PLATFORM_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_FIRST_LEVEL
    ${APPLICATION_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_SECOND_LEVEL
    ${COMPONENT_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_THIRD_LEVEL
    ${XPATH_PLATFORM_BUTTON} =    list_xpath.Obtain Xpath For Entitlement On Tree Expand Button    ${PLATFORM_ENTITLEMENT}
    ${XPATH_APPLICATION_BUTTON} =    list_xpath.Obtain Xpath For Entitlement On Tree Expand Button    ${APPLICATION_ENTITLEMENT}
    ${XPATH_COMPONENT} =    list_xpath.Obtain Xpath For Entitlement On Tree    ${COMPONENT_ENTITLEMENT}
    Wait Until Page Contains Element    ${XPATH_PLATFORM_BUTTON}    ${LG_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View    ${XPATH_PLATFORM_BUTTON}
    Click Element    ${XPATH_PLATFORM_BUTTON}
    Click Element    ${XPATH_APPLICATION_BUTTON}
    Click Element    ${XPATH_COMPONENT}

Click To Edit The Entitlement on the Entitlement Tree
    Wait Until Page Contains Element    ${entitlements_page_locators.edit_button}    ${LG_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.edit_button}
    Run Keyword And Ignore Error    Run Keywords
    ...    Wait Until Page Contains Element    ${entitlements_page_locators.information_message}    ${LG_TIME}    AND
    ...    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}              ${LG_TIME}    AND
    ...    Click Element                       ${entitlements_page_locators.ok_button}

Edit Name Of The Platform Entitlement on the Entitlement Tree
    [Arguments]    ${NEW_NAME}
    Wait Until Element Is Enabled    ${entitlements_page_locators.edit_name_input}    ${LG_TIME}
    ${PLATFORM_NAME_EDIT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${NEW_NAME}
    Input Text    ${entitlements_page_locators.edit_name_input}    ${PLATFORM_NAME_EDIT}

Edit Description Of The Platform Entitlement on the Entitlement Tree
    [Arguments]    ${NEW_DESCRIPTION}
    Wait Until Element Is Enabled    ${entitlements_page_locators.edit_description_input}    ${LG_TIME}
    ${PLATFORM_DESCRIPTION_EDIT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${NEW_DESCRIPTION}
    Input Text    ${entitlements_page_locators.edit_description_input}    ${PLATFORM_DESCRIPTION_EDIT}

Edit Provisioning Type Of The Platform Entitlement on the Entitlement Tree
    [Arguments]    ${PROV_TYPE_EDIT}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Expand Provisioning Type List
    Select Provisioning Type At Create New Entitlement Form    ${PROV_TYPE_EDIT}

Edit Includes Of The Platform Entitlement on the Entitlement Tree
    [Arguments]    ${NEW_INCLUDES}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Expand Includes List
    Select Elemets To Include At Create New Entitlement Form    ${NEW_INCLUDES}
    Press Keys    None    ESC

Edit Requires Of The Platform Entitlement on the Entitlement Tree
    [Arguments]    ${NEW_REQUIRES}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Expand Requires List
    Select Elemets Required At Create New Entitlement Form    ${NEW_REQUIRES}
    Press Keys    None    ESC

Edit Parent Of The Application Entitlement on the Entitlement Tree
    [Arguments]    ${PARENT_DICTIONARY}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Expand Parents List
    Select Parent At Create New Entitlement Form    ${PARENT_DICTIONARY}

Edit Category Of The Application Entitlement on the Entitlement Tree
    [Arguments]    ${CATEGORY}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Expand Category List
    Find Category Inside Category List And Select It    ${CATEGORY}

Edit Entity Type From Permission Form
    [Arguments]    ${ENTITY_TYPE}
    Wait Until Page Contains Element    ${entitlements_page_locators.entity_type}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.entity_type}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${ELEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITY_TYPE}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${ELEMENT_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Edit Action From Permission Form
    [Arguments]    ${ACTION}
    Wait Until Page Contains Element    ${entitlements_page_locators.action_type}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.action_type}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${ACTION_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ACTION}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${ACTION_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Edit Permission Group From Permission Form
    [Arguments]    ${PERMISSION_GROUP}
    Wait Until Page Contains Element    ${entitlements_page_locators.permission_group}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.permission_group}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${PERMISSION_GROUP_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PERMISSION_GROUP}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${PERMISSION_GROUP_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Edit Grant External From Permission Form
    [Arguments]    ${GRANT_EXTERNAL}
    #Wait Until Page Contains Element    ${entitlements_page_locators.grant_external}   ${LG_TIME} 
    #Click Element    ${entitlements_page_locators.grant_external}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.grant_external_edit}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.grant_external_edit}
    ${GRANT_EXTERNAL_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${GRANT_EXTERNAL}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${GRANT_EXTERNAL_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Edit Grant Internal From Permission Form
    [Arguments]    ${GRANT_INTERNAL}
    Wait Until Page Contains Element    ${entitlements_page_locators.grant_internal_edit}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.grant_internal_edit}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${GRANT_INTERNAL_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${GRANT_INTERNAL}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${GRANT_INTERNAL_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Edit Grant Level From Permission Form
    [Arguments]    ${GRANT_LEVEL}
    Wait Until Page Contains Element    ${entitlements_page_locators.grant_level_edit}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.grant_level_edit}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${GRANT_LEVEL_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${GRANT_LEVEL}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${GRANT_LEVEL_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Edit Status From Permission Form
    [Arguments]    ${STATUS}
    Wait Until Page Contains Element    ${entitlements_page_locators.status_listbox_permission}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.status_listbox_permission}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${STATUS_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${STATUS}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${STATUS_VALUE}
    Run Keyword And Ignore Error    Wait Until Page Contains Element    ${entitlements_page_locators.status_listbox_permission}    ${LG_TIME}
    Run Keyword And Ignore Error    Click Element    ${entitlements_page_locators.status_listbox_permission}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Edit Name From Permission Form
    [Arguments]    ${NEW_NAME}
    Wait Until Page Contains Element   ${entitlements_page_locators.name_permisson}    ${LG_TIME}s 
    ${NAME_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${NEW_NAME}
    Input Text    ${entitlements_page_locators.name_permisson}   ${NAME_VALUE} 

Add Grant External For New Permission Form
    [Arguments]    ${GRANT_EXTERNAL}
    Wait Until Page Contains Element    ${entitlements_page_locators.grant_external_create}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.grant_external_create}
    ${GRANT_EXTERNAL_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${GRANT_EXTERNAL}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${GRANT_EXTERNAL_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Add Grant Internal For New Permission Form
    [Arguments]    ${GRANT_INTERNAL}
    Wait Until Page Contains Element    ${entitlements_page_locators.grant_internal_create}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.grant_internal_create}
    ${GRANT_INTERNAL_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${GRANT_INTERNAL}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${GRANT_INTERNAL_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Add Grant Level For New Permission Form
    [Arguments]    ${GRANT_LEVEL}
    Wait Until Page Contains Element    ${entitlements_page_locators.grant_level_create}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.grant_level_create}
    ${GRANT_LEVEL_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${GRANT_LEVEL}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${GRANT_LEVEL_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Add Group For New Permission Form
    [Arguments]    ${GROUP}
    Wait Until Page Contains Element    ${entitlements_page_locators.permission_group}   ${LG_TIME} 
    Click Element    ${entitlements_page_locators.permission_group}
    ${GROUP_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${GROUP}
    ${ELEMENT_XPATH} =    list_xpath.Obtain Xpath For Permission For Entitlement    ${GROUP_VALUE}
    Wait Until Page Contains Element    ${ELEMENT_XPATH}    ${LG_TIME}
    Click Element    ${ELEMENT_XPATH}

Undo The Edition General
    [Arguments]    ${NAME}    ${DESCRIPTION}    ${PROVISIONING_TYPE}    ${INCLUDES}    ${REQUIRES}
    Click To Edit The Entitlement on the Entitlement Tree
    Edit Name Of The Platform Entitlement on the Entitlement Tree    ${NAME}
    Edit Description Of The Platform Entitlement on the Entitlement Tree    ${DESCRIPTION}
    # Edit Provisioning Type Of The Platform Entitlement on the Entitlement Tree    ${PROVISIONING_TYPE}
    Edit Includes Of The Platform Entitlement on the Entitlement Tree    ${INCLUDES}
    Edit Requires Of The Platform Entitlement on the Entitlement Tree    ${REQUIRES}
    Save New Entitlement Form
    Confirm New Entitlement Was Created Or Edited

Undo The Edition Application
    [Arguments]    ${PARENT_DICTIONARY}    ${CATEGORY}
    Click To Edit The Entitlement on the Entitlement Tree
    # Edit Parent Of The Application Entitlement on the Entitlement Tree    ${PARENT_DICTIONARY}
    Edit Category Of The Application Entitlement on the Entitlement Tree    ${CATEGORY}
    Save New Entitlement Form
    Confirm New Entitlement Was Created Or Edited

Undo The Edition Component
    [Arguments]    ${PARENT_DICTIONARY}
    Click To Edit The Entitlement on the Entitlement Tree
    Edit Parent Of The Application Entitlement on the Entitlement Tree    ${PARENT_DICTIONARY}
    Save New Entitlement Form
    Confirm New Entitlement Was Created Or Edited

Undo Changes In Permissons Form
    [Arguments]    ${PERMISSION}
    Open Details Form    ${PERMISSION}
    Edit Entity Type From Permission Form    ENTITY_TYPE_PERMISSION
    Edit Action From Permission Form    ACTION_PERMISSION
    Edit Name From Permission Form    NAME_PERMISSION
    Edit Grant External From Permission Form    GRAND_TO_EXTERNAL_PERMISSION
    #Edit Grant Internal From Permission Form    GRAND_TO_INTERNAL_PERMISSION
    Edit Grant Level From Permission Form    GRAND_TO_LEVEL_PERMISSION
    Save Permisson Edition
    Confirm New Entitlement Was Created Or Edited

Undo Changes in Status From Permisson Form
    [Arguments]    ${PERMISSION}
    Open Details Form    ${PERMISSION}
    Edit Status From Permission Form    STATUS_PERMISSION
    Save Permisson Edition
    Confirm New Entitlement Was Created Or Edited

Undo Permission Created
    [Arguments]    ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME_XPATH} =     list_xpath.Obtain Xpath To Kebab Button For Permissions   ${PERMISSION_NAME}
    Wait Until Page Contains Element    ${PERMISSION_NAME_XPATH}    ${LG_TIME}
    Click Element    ${PERMISSION_NAME_XPATH}
    Wait Until Page Contains Element    ${entitlements_page_locators.remove_permission_button}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.remove_permission_button}
    Wait Until Page Contains Element    ${entitlements_page_locators.confirmation_yes_button}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.confirmation_yes_button}
    Confirm New Entitlement Was Created Or Edited

Search For an Entitlement
    [Arguments]    ${ENTITLEMENT}
    Wait Until Page Contains Element    ${entitlements_page_locators.search_bar}    ${LG_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${PERMISSION} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    Input Text    ${entitlements_page_locators.search_bar}    ${PERMISSION}

Search For an Entitlement And Select It
    [Arguments]    ${ENTITLEMENT}
    Wait Until Page Contains Element    ${entitlements_page_locators.search_bar}    ${LG_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    ${PERMISSION} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    Input Text    ${entitlements_page_locators.search_bar}    ${PERMISSION}
    ${XPATH_PERMISSION} =    list_xpath.Obtain Xpath For Entitlement On Tree    ${PERMISSION}
    Wait Until Page Contains Element    ${XPATH_PERMISSION}
    Click Element    ${XPATH_PERMISSION}

Switch To Permissions Tab
    Wait Until Page Contains Element    ${entitlements_page_locators.permissions_tab}    ${LG_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.permissions_tab}

Switch To Appcat Tab
    Wait Until Page Contains Element    ${entitlements_page_locators.appcat_tab}      ${LG_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Click Element    ${entitlements_page_locators.appcat_tab}
    Wait Until Page Contains Element    ${entitlements_page_locators.group_button}    ${LG_TIME}

Open Details Form
    [Arguments]    ${PERMISSION}   
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Sleep    ${SH_TIME}
    ${PERMISSION_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PERMISSION} 
    ${PERMISSION_NAME_XPATH} =     list_xpath.Obtain Xpath To Kebab Button For Permissions    ${PERMISSION_NAME}
    Wait Until Page Contains Element    ${PERMISSION_NAME_XPATH}    ${LG_TIME}
    Scroll Element Into View            ${PERMISSION_NAME_XPATH}
    Click Element    ${PERMISSION_NAME_XPATH}
    Click Element    ${entitlements_page_locators.details_permisson}

Save Permisson Edition
    Wait Until Page Contains Element    ${entitlements_page_locators.save_button_permisson}    ${LG_TIME}
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Sleep    ${SH_TIME}
    Click Element    ${entitlements_page_locators.save_button_permisson}

Find An Entiltlemet Thas Can Expand
    ${PLATFORM_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_FIRST_LEVEL
    ${XPATH_PLATFORM} =    list_xpath.Obtain Xpath For Entitlement On Tree    ${PLATFORM_ENTITLEMENT}
    Wait Until Page Contains Element    ${XPATH_PLATFORM}    ${LG_TIME}
    Run Keyword And Ignore Error    Scroll Element Into View    ${XPATH_PLATFORM}

Verify Children Are Not Visible
    ${APPLICATION_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_SECOND_LEVEL
    ${XPATH_APPLICATION} =    list_xpath.Obtain Xpath For Entitlement On Tree    ${APPLICATION_ENTITLEMENT}
    Element Should Not Be Visible    ${XPATH_APPLICATION}

Verify Children Are Visible After Expanding
    ${APPLICATION_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_SECOND_LEVEL
    ${XPATH_APPLICATION} =    list_xpath.Obtain Xpath For Entitlement On Tree    ${APPLICATION_ENTITLEMENT}
    Element Should Be Visible    ${XPATH_APPLICATION}

Vefiry That Only The Parent Is Visible
    Verify Children Are Not Visible
    ${PLATFORM_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      GROUP_NAME_FIRST_LEVEL
    ${XPATH_PLATFORM} =    list_xpath.Obtain Xpath For Entitlement On Tree    ${PLATFORM_ENTITLEMENT}
    Wait Until Page Contains Element    ${XPATH_PLATFORM}    ${LG_TIME}
    Element Should Be Visible    ${XPATH_PLATFORM}

Verify Entitlement Tree Conatins The Entitlement That We Searched
    [Arguments]    ${ENTITLEMENT}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    ${XPATH_ELEMENT} =    list_xpath.Obtain Xpath For Entitlement On Tree   ${ENTITLEMENT_VALUE} 
    Page Should Contain Element    ${XPATH_ELEMENT}

Verify Entitlement Tree Does Not Conatins The Fake Entitlement That We Searched
    [Arguments]    ${ENTITLEMENT}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    ${XPATH_ELEMENT} =    list_xpath.Obtain Xpath For Entitlement On Tree   ${ENTITLEMENT_VALUE} 
    Page Should Not Contain Element    ${XPATH_ELEMENT}

Verify Details of A Permission Are Visible
    Element Should Be Visible    ${entitlements_page_locators.entity_type}   ${LG_TIME} 
    Element Should Be Visible    ${entitlements_page_locators.action_type}   ${LG_TIME} 
    Element Should Be Visible    ${entitlements_page_locators.permission_group}   ${LG_TIME} 
    Element Should Be Visible    ${entitlements_page_locators.grant_external_edit}   ${LG_TIME} 
    Element Should Be Visible    ${entitlements_page_locators.grant_internal_edit}   ${LG_TIME} 

Verify Permission Was Deleted
    [Arguments]    ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME_XPATH} =     list_xpath.Obtain Xpath To Kebab Button For Permissions   ${PERMISSION_NAME}
    Element Should Not Be Visible    ${PERMISSION_NAME_XPATH}

Verify Status Text Changed
    [Arguments]    ${CORRECT_STATUS}    ${PERMISSION_NAME_DICTIONARY}
    Sleep    ${SH_TIME}
    ${PERMISSION_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PERMISSION_NAME_DICTIONARY}
    ${STATUS_PERMISSION_XPATH} =     list_xpath.Obtain Xpath To Verify Status For Permissions   ${PERMISSION_NAME}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${CORRECT_STATUS}
    Wait Until Page Contains Element    xpath=${STATUS_PERMISSION_XPATH}    ${LG_TIME}
    ${STATUS} =     Get Text    xpath=${STATUS_PERMISSION_XPATH}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${CORRECT_STATUS}
    Should Be Equal As Strings    ${STATUS}    ${ENTITLEMENT_VALUE}

Verify Name Text Changed
    [Arguments]    ${CORRECT_NAME}    ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME_XPATH} =     list_xpath.Obtain Xpath To Verify Name For Permissions   ${PERMISSION_NAME}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${CORRECT_NAME}
    Wait Until Page Contains Element    xpath=${PERMISSION_NAME_XPATH}    ${LG_TIME}
    ${STATUS} =     Get Text    xpath=${PERMISSION_NAME_XPATH}
    ${ENTITLEMENT_VALUE} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${CORRECT_NAME}
    Should Be Equal As Strings    ${STATUS}    ${ENTITLEMENT_VALUE}

Verify Details of A Permission Are Not Visible
    Element Should Not Be Visible    ${entitlements_page_locators.entity_type}   ${LG_TIME} 
    Element Should Not Be Visible    ${entitlements_page_locators.action_type}   ${LG_TIME} 
    Element Should Not Be Visible    ${entitlements_page_locators.permission_group}   ${LG_TIME} 
    Element Should Not Be Visible    ${entitlements_page_locators.grant_external_edit}   ${LG_TIME} 
    Element Should Not Be Visible    ${entitlements_page_locators.grant_internal_edit}   ${LG_TIME} 

Verify If Permission Was Already Created Otherwise Create It
    [Arguments]    ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME_XPATH} =     list_xpath.Obtain Xpath To Verify Name For Permissions   ${PERMISSION_NAME}
    ${CREATED} =    Run Keyword And Return Status    Page Should Not Contain Element    ${PERMISSION_NAME_XPATH}
    Run Keyword If    ${CREATED}    Create Permission To Test  

Verify Save Button Is Blocked
    Wait Until Page Contains Element    ${entitlements_page_locators.save_button_permisson}    ${LG_TIME}
    Element Attribute Value Should Be    ${entitlements_page_locators.save_button_permisson}    disabled    true
    ${STYLE} =    Get WebElement    ${entitlements_page_locators.save_button_permisson}
    ${STYLE_COLOR} =     Call Method    ${STYLE}    value_of_css_property    background-color
    #Should Be Equal As Strings    ${STYLE_COLOR}   rgba(0, 0, 0, 0.12)

Verify Save Button Is Not Blocked
    Sleep    ${SH_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.save_button_permisson}    ${LG_TIME}
    Element Should Be Enabled    ${entitlements_page_locators.save_button_permisson}
    ${STYLE} =    Get WebElement    ${entitlements_page_locators.save_button_permisson}
    #${STYLE_COLOR} =     Call Method    ${STYLE}    value_of_css_property    background-color
    #Should Be Equal As Strings    ${STYLE_COLOR}   rgba(25, 79, 161, 1)

Verify Save Button Is Blocked In Permission
    Wait Until Page Contains Element    ${entitlements_page_locators.save_button_permisson}    ${LG_TIME}s
    Element Should Be Disabled    ${entitlements_page_locators.save_button_permisson}
    ${STYLE} =    Get WebElement    ${entitlements_page_locators.save_button_permisson}
    ${STYLE_COLOR} =     Call Method    ${STYLE}    value_of_css_property    background-color
    #Should Be Equal As Strings    ${STYLE_COLOR}   rgba(0, 0, 0, 0.12)

Verify General Tab Is Visible
    Element Should Be Visible    ${entitlements_page_locators.name_general_tab}
    Element Should Be Visible    ${entitlements_page_locators.id_general_tab}
    Element Should Be Visible    ${entitlements_page_locators.type_general_tab}
    Element Should Be Visible    ${entitlements_page_locators.prov_type_general_tab}
    Element Should Be Visible    ${entitlements_page_locators.description_general_tab}
    Element Should Be Visible    ${entitlements_page_locators.includes_general_tab}
    Element Should Be Visible    ${entitlements_page_locators.requires_general_tab}

Verify Permissions Tab Is Visible With Defined Permission
    [Arguments]    ${PERMISSION_NAME_DICTIONARY}
    Sleep    1s
    ${PERMISSION_NAME} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${PERMISSION_NAME_DICTIONARY}
    ${PERMISSION_NAME_XPATH} =     list_xpath.Obtain Xpath To Verify Name For Permissions   ${PERMISSION_NAME}
    ${PERMISSION_KEBAB_XPATH} =    list_xpath.Obtain Xpath To Kebab Button For Permissions   ${PERMISSION_NAME}
    Element Should Be Visible    ${PERMISSION_NAME_XPATH}
    Element Should Be Visible    ${PERMISSION_KEBAB_XPATH}

Verify Permissions Tab Is Visible
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Element Should Be Visible    ${entitlements_page_locators.permission_tab_key}
    Element Should Be Visible    ${entitlements_page_locators.permission_tab_description}
    Element Should Be Visible    ${entitlements_page_locators.permission_tab_group}
    

Verify Create New Entitlement Form
    Element Should Be Visible    ${entitlements_page_locators.name}
    Element Should Be Visible    ${entitlements_page_locators.entitlement_id}
    Element Should Be Visible    ${entitlements_page_locators.description}
    Element Should Be Visible    ${entitlements_page_locators.type_list}

Verify Time Stamp Inactive
    ${TIME_STAMP_TEXT}=    Get Text    ${entitlements_page_locators.time_stamp_In_permission}
    Log    ${TIME_STAMP_TEXT}

Verify If Status Is Not On Active Otherwise Change It
    ${STATUS_ACTIVE} =     Run Keyword And Return Status    Verify Status Text Changed    STATUS_PERMISSION   PERMISSION_NAME_ALREADY_CREATED
    Run Keyword If    ${STATUS_ACTIVE}    Change Status To Other Than Active    PERMISSION_NAME_ALREADY_CREATED
    
Change Status To Other Than Active
    [Arguments]    ${PERMISSION_NAME}
    Open Details Form    ${PERMISSION_NAME}
    Edit Status From Permission Form    STATUS_PERMISSION_EDIT_DEACTIVE
    Save And Verify Time Stamp Deprecated

Collapse An Entitlement To Show Children
    [Arguments]    ${ENTITLEMENT}
    ${PLATFORM_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    ${XPATH_PLATFORM_BUTTON} =    list_xpath.Obtain Xpath For Entitlement On Tree Expand Button    ${PLATFORM_ENTITLEMENT}
    Wait Until Page Contains Element    ${XPATH_PLATFORM_BUTTON}    ${LG_TIME}
    Click Element    ${XPATH_PLATFORM_BUTTON}
    
Expand an Entitlement To Show Children
    [Arguments]    ${ENTITLEMENT}
    ${PLATFORM_ENTITLEMENT} =    Collections.Get From Dictionary    ${ENTITLEMENTS_VARIABLES}      ${ENTITLEMENT}
    ${XPATH_PLATFORM_BUTTON} =    list_xpath.Obtain Xpath For Entitlement On Tree Expand Button    ${PLATFORM_ENTITLEMENT}
    Wait Until Page Contains Element    ${XPATH_PLATFORM_BUTTON}    ${LG_TIME}
    Click Element    ${XPATH_PLATFORM_BUTTON}

Reload Page and Verify Changes
    [Arguments]    ${CORRECT_STATUS}    ${PERMISSION_NAME_DICTIONARY}
    Reload Page
    Sleep    10s
    Select Main Iframe from System Console Entitlements Page
    Search For an Entitlement And Select It    ${ENVIRONMENT}
    Switch To Permissions Tab
    Verify Status Text Changed    ${CORRECT_STATUS}    ${PERMISSION_NAME_DICTIONARY}    
    
Create Permission To Test
    Click On Add New Entitlement from System Console Entitlements Or Permission Page
    Edit Entity Type From Permission Form    ENTITY_TYPE_PERMISSION_NEW
    Edit Action From Permission Form    ACTION_PERMISSION_NEW
    Edit Name From Permission Form    NAME_PERMISSION_NEW
    Add Group For New Permission Form    GROUP_PERMISSION_NEW
    Add Grant External For New Permission Form    GRAND_TO_EXTERNAL_PERMISSION_NEW
    #Add Grant Internal For New Permission Form    GRAND_TO_INTERNAL_PERMISSION_NEW
    Add Grant Level For New Permission Form    GRAND_TO_LEVEL_PERMISSION_NEW
    Save Permisson Edition
    Confirm New Entitlement Was Created Or Edited

Leave Details of A Permission
    Wait Until Page Contains Element    ${entitlements_page_locators.cancel_button_permisson}    ${LG_TIME}s
    Click Element    ${entitlements_page_locators.cancel_button_permisson}

Delete Permission From The Deatil Form
    Wait Until Page Contains Element    ${entitlements_page_locators.delete_button_permisson}    ${LG_TIME}s
    Click Element    ${entitlements_page_locators.delete_button_permisson}

Confirm Deletion of Permission
    Wait Until Page Contains Element    ${entitlements_page_locators.yes_deletion}    ${LG_TIME}s
    Click Element    ${entitlements_page_locators.yes_deletion}

Get Time Stamp Before Change Inactive
    ${TIME_STAMP_BEFORE} =    Get Element Attribute    ${entitlements_page_locators.time_stamp_inactive_in_permission}    value
    [Return]    ${TIME_STAMP_BEFORE}

Get Time Stamp After Change Inactive
    ${TIME_STAMP_AFTER} =    Get Element Attribute    ${entitlements_page_locators.time_stamp_inactive_in_permission}    value
    [Return]    ${TIME_STAMP_AFTER}

Get Time Stamp Before Change Deprecated
    ${TIME_STAMP_BEFORE} =    Get Element Attribute    ${entitlements_page_locators.time_stamp_deprecated_in_permission}    value
    [Return]    ${TIME_STAMP_BEFORE}

Get Time Stamp After Change Deprecated
    ${TIME_STAMP_AFTER} =    Get Element Attribute    ${entitlements_page_locators.time_stamp_deprecated_in_permission}    value
    [Return]    ${TIME_STAMP_AFTER}

Save And Verify Time Stamp Inactive
    ${TIME_STAMP_BEFORE} =    Get Time Stamp Before Change Inactive
    Save Permisson Edition
    Confirm New Entitlement Was Created Or Edited
    Open Details Form    PERMISSION_NAME_ALREADY_CREATED
    ${TIME_STAMP_AFTER} =    Get Time Stamp After Change Inactive
    Should Not Be Equal As Strings  ${TIME_STAMP_AFTER}      ${TIME_STAMP_BEFORE}
    Press Keys    None    ESC

Save And Verify Time Stamp Deprecated
    ${TIME_STAMP_BEFORE} =    Get Time Stamp Before Change Deprecated
    Save Permisson Edition
    Confirm New Entitlement Was Created Or Edited
    Open Details Form    PERMISSION_NAME_ALREADY_CREATED
    ${TIME_STAMP_AFTER} =    Get Time Stamp After Change Deprecated
    Should Not Be Equal As Strings  ${TIME_STAMP_AFTER}      ${TIME_STAMP_BEFORE}
    Press Keys    None    ESC

Click On Groups Button
    ${LOADING} =    list_xpath.Loading Xpath
    Wait Until Page Contains Element    ${LOADING}    ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.group_button}                 ${LG_TIME}
    Sleep    5S
    Click Element                       ${entitlements_page_locators.group_button}
    Wait Until Page Contains Element    ${entitlements_page_locators.title_group_configuration}    ${LG_TIME}

Click On New Button From Groups List
    Wait Until Page Contains Element    ${entitlements_page_locators.title_group_configuration}    ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.new_group_button}             ${LG_TIME}
    Click Element                       ${entitlements_page_locators.new_group_button}
    Wait Until Page Contains Element    ${entitlements_page_locators.title_new_group}              ${LG_TIME}

Click On Cancel Button From New Group
    Wait Until Page Contains Element    ${entitlements_page_locators.title_new_group}              ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.cancel_appcat_button}         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.cancel_appcat_button}
    Wait Until Page Does Not Contain Element    ${entitlements_page_locators.title_new_group}      ${LG_TIME}

Click On Kebab Button From Groups List
    [Arguments]    ${group}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.title_group_configuration}    ${LG_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Group Kebab Button    ${group}
    Wait Until Page Contains Element    ${XPATH}    ${LG_TIME}
    Click Element                       ${XPATH}

Click On View Details From Group
    Wait Until Page Contains Element    ${entitlements_page_locators.view_details_group_option}    ${LG_TIME}
    Click Element                       ${entitlements_page_locators.view_details_group_option}

Click On Remove Group
    Wait Until Page Contains Element    ${entitlements_page_locators.remove_group_option}          ${LG_TIME}
    Click Element                       ${entitlements_page_locators.remove_group_option}

Click On Cancel Button From Edit Group
    Wait Until Page Contains Element    ${entitlements_page_locators.title_edit_group}             ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.cancel_appcat_button}         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.cancel_appcat_button}
    Wait Until Page Does Not Contain Element    ${entitlements_page_locators.title_edit_group}     ${LG_TIME}

Save Button Is Disabled From Appcat Tab
    Wait Until Page Contains Element    ${entitlements_page_locators.save_disable_appcat_button}    ${LG_TIME}

Save Button Is Enabled From Appcat Tab
    Wait Until Page Does Not Contain Element    ${entitlements_page_locators.save_disable_appcat_button}    ${LG_TIME}
    Wait Until Page Contains Element            ${entitlements_page_locators.save_appcat_button}            ${LG_TIME}

Fill Attribute Group Name Field From Category Group
    [Arguments]    ${group}
    Wait Until Page Contains Element    ${entitlements_page_locators.attrib_group_name}    ${LG_TIME}
    Clear Element Text                  ${entitlements_page_locators.attrib_group_name}
    Input Text                          ${entitlements_page_locators.attrib_group_name}    ${group}

Fill Sort Order Field From Category Group
    [Arguments]    ${sort}
    Wait Until Page Contains Element    ${entitlements_page_locators.sort_order_group}     ${LG_TIME}
    Clear Element Text                  ${entitlements_page_locators.sort_order_group}
    Input Text                          ${entitlements_page_locators.sort_order_group}     ${sort}

Delete Group Message Confirmation
    Wait Until Page Contains Element    ${entitlements_page_locators.delete_group_message}    ${LG_TIME}

Delete Group Success Message
    Wait Until Page Contains Element    ${entitlements_page_locators.delete_group_success_message}    ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                       ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}
    Press Keys    ${None}    ESC

Click On Yes Button From The Confirmation Message
    Wait Until Page Contains Element    ${entitlements_page_locators.confirmation_yes_button}    ${LG_TIME}
    Click Element                       ${entitlements_page_locators.confirmation_yes_button}

Click On No Button From The Confirmation Message
    Wait Until Page Contains Element    ${entitlements_page_locators.confirmation_no_button}     ${LG_TIME}
    Click Element                       ${entitlements_page_locators.confirmation_no_button}

Verify That The Group Is Not Found
    [Arguments]    ${group}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.title_group_configuration}    ${LG_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Group Kebab Button    ${group}
    Wait Until Page Does Not Contain Element    ${XPATH}    ${LG_TIME}

Click On Save Button From Appcat Tab
    Wait Until Page Does Not Contain Element    ${entitlements_page_locators.save_disable_appcat_button}    ${LG_TIME}
    Wait Until Page Contains Element            ${entitlements_page_locators.save_appcat_button}            ${LG_TIME}
    Click Element                               ${entitlements_page_locators.save_appcat_button}

Updated Group Success Message
    Wait Until Page Contains Element    ${entitlements_page_locators.updated_group_success_message}    ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                        ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}
    Press Keys    ${None}    ESC

Created Group Success Message
    Wait Until Page Contains Element    ${entitlements_page_locators.created_group_success_message}    ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                        ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}
    Press Keys    ${None}    ESC

Created Group Error Message
    Wait Until Page Contains Element    ${entitlements_page_locators.created_group_error_message}      ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                        ${LG_TIME}

Click On New Appcat Button
    Wait Until Page Contains Element    ${entitlements_page_locators.new_button}                       ${LG_TIME}
    Click Element                       ${entitlements_page_locators.new_button}

Fill Appcat Name Field From Appcat Form
    [Arguments]    ${name}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.appcat_name_appcat}               ${LG_TIME}
    Clear Element Text                  ${entitlements_page_locators.appcat_name_appcat}
    Input Text                          ${entitlements_page_locators.appcat_name_appcat}               ${name}

Fill Title Field From Appcat Form
    [Arguments]    ${name}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.title_option_appcat}              ${LG_TIME}
    Clear Element Text                  ${entitlements_page_locators.title_option_appcat}
    Input Text                          ${entitlements_page_locators.title_option_appcat}              ${name}

Fill Description Field From Appcat Form
    [Arguments]    ${description}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.description_appcat}               ${LG_TIME}
    Clear Element Text                  ${entitlements_page_locators.description_appcat}
    Input Text                          ${entitlements_page_locators.description_appcat}               ${description}

Select Attribute Group From Appcat Form
    [Arguments]    ${group}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.attribute_group_selector}         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.attribute_group_selector}
    ${XPATH} =    list_xpath.Obtain Xpath From Mat Option    ${group}
    Wait Until Page Contains Element    ${XPATH}             ${LG_TIME}
    Click Element                       ${XPATH}

Select Appcat Type From Appcat Form
    [Arguments]    ${type}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.appcat_type_appcat}         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.appcat_type_appcat}
    ${XPATH} =    list_xpath.Obtain Xpath From Mat Option    ${type}
    Wait Until Page Contains Element    ${XPATH}             ${LG_TIME}
    Click Element                       ${XPATH}

Select Status From Appcat Form
    [Arguments]    ${status}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.status_appcat_selector}           ${LG_TIME}
    Click Element                       ${entitlements_page_locators.status_appcat_selector}
    ${XPATH} =    list_xpath.Obtain Xpath From Mat Option    ${status}
    Wait Until Page Contains Element    ${XPATH}             ${LG_TIME}
    Click Element                       ${XPATH}

Select UI Widget From Appcat Form
    [Arguments]    ${widget}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ui_widget_appcat_selector}        ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ui_widget_appcat_selector}
    ${XPATH} =    list_xpath.Obtain Xpath From Mat Option    ${widget}
    Wait Until Page Contains Element    ${XPATH}             ${LG_TIME}
    Click Element                       ${XPATH}

Select Locked From Appcat Form
    [Arguments]    ${lock}
    Sleep    ${UL_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.locket_appcat_selector}           ${LG_TIME}
    Click Element                       ${entitlements_page_locators.locket_appcat_selector}
    ${XPATH} =    list_xpath.Obtain Xpath From Mat Option    ${lock}
    Wait Until Page Contains Element    ${XPATH}             ${LG_TIME}
    Click Element                       ${XPATH}

Created An Appcat Success Message
    Wait Until Page Contains Element    ${entitlements_page_locators.created_appcat_success_message}    ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}

Updated An Appcat Success Message
    Wait Until Page Contains Element    ${entitlements_page_locators.updated_appcat_success_message}    ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}

Deleted An Appcat Success Message
    Wait Until Page Contains Element    ${entitlements_page_locators.delete_appcat_success_message}     ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}

Click On Kebab Button From Appcat List
    [Arguments]    ${appcat}
    Sleep    ${UL_TIME}
    ${XPATH} =    list_xpath.Obtain Xpath Appcat Kebab Button    ${appcat}
    Wait Until Page Contains Element    ${XPATH}    ${LG_TIME}
    Scroll Element Into View            ${XPATH}
    Click Element                       ${XPATH}

Click On Remove Appcat
    Wait Until Page Contains Element    ${entitlements_page_locators.remove_appcat_option}              ${LG_TIME}
    Click Element                       ${entitlements_page_locators.remove_appcat_option}

Delete Appcat Message Confirmation
    Wait Until Page Contains Element    ${entitlements_page_locators.delete_appcat_message}             ${LG_TIME}

Delete Appcat Success Message
    Wait Until Page Contains Element    ${entitlements_page_locators.delete_appcat_success_message}     ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}

Appcat Type Is Disabled From An Appcat
    Wait Until Page Contains Element    ${entitlements_page_locators.appcat_type_appcat_disable}        ${LG_TIME}

Appcat ID Is Disabled From An Appcat
    Wait Until Page Contains Element    ${entitlements_page_locators.appcat_id_appcat_disabled}         ${LG_TIME}

Entitlement ID Is Disabled From An Appcat
    Wait Until Page Contains Element    ${entitlements_page_locators.entitlement_id_appcat_disabled}    ${LG_TIME}

Click On View Details From An Appcat
    Wait Until Page Contains Element    ${entitlements_page_locators.view_details_appcat_option}        ${LG_TIME}
    Click Element                       ${entitlements_page_locators.view_details_appcat_option}

Cannot create category group error message
    Wait Until Page Contains Element    ${entitlements_page_locators.category_error_message}            ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}

Cannot create category group with a same name error message
    Wait Until Page Contains Element    ${entitlements_page_locators.category_name_error_message}       ${LG_TIME}
    Wait Until Page Contains Element    ${entitlements_page_locators.ok_button}                         ${LG_TIME}
    Click Element                       ${entitlements_page_locators.ok_button}

Get All Sort Order Value From Category Group List
    @{string} =    Create List    1    2    3
    FOR     ${NUMBER}    IN   @{string}
        ${XPATH} =    list_xpath.Obtain Xpath From Sort Order    ${NUMBER}
        Wait Until Page Contains Element    ${XPATH}    ${LG_TIME}
        ${SORT_VALUE} =    Get Text    ${XPATH}
        IF    '${NUMBER}'!='${SORT_VALUE}'
            Fail
        END
    END
