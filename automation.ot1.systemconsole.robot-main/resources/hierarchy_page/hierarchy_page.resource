
Load Hierarchy Tab From Portal Page
    Wait Until Element Is Visible    ${hierarchy_groups_page_locators.hierarchy_title}    ${LG_TIME}

Navigate To Hierarchy Tab From Portal Page
    Click Element                    dom:${hierarchy_groups_page_locators.hierarchy_tab}
    Wait Until Element Is Visible    dom:${hierarchy_groups_page_locators.hierarchy_iframe}    ${LG_TIME}

Select Main Iframe Hierarchy Tab From Portal Page
    Wait Until Element Is Visible    dom:${hierarchy_groups_page_locators.hierarchy_iframe}    ${LG_TIME}
    Select Frame                     dom:${hierarchy_groups_page_locators.hierarchy_iframe}
    Wait Until Element Is Visible    ${hierarchy_groups_page_locators.hierarchy_title}         ${LG_TIME}

Unselect Main Iframe Hierarchy Tab From Portal Page
    Unselect Frame

Click On Create New Hierarchy Group
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.add_hierachy_group}    ${LG_TIME}
    Click Button    ${hierarchy_groups_page_locators.add_hierachy_group}

Input Details About Hierarchy Group
    [Arguments]    ${NEW_GROUP_NAME}    ${GROUP_DESCRIPTION}
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.input_name}    ${LG_TIME}
    Input Text     ${hierarchy_groups_page_locators.input_name}           ${NEW_GROUP_NAME}
    Input Text     ${hierarchy_groups_page_locators.input_description}    ${GROUP_DESCRIPTION}

Click On Save Button From New Hierarchy Group
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.save_button}    ${LG_TIME}
    Click Element     ${hierarchy_groups_page_locators.save_button}

Click On Root Parent Node
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.root_parent_node_list}    ${LG_TIME}
    Click Element    ${hierarchy_groups_page_locators.root_parent_node_list}

Click On Parent Node Name
    [Arguments]    ${PARENT_NODE}
    ${XPATH} =     list_xpath.Obtain Parent Node    ${PARENT_NODE}
    Wait Until Page Contains Element    ${XPATH}    ${LG_TIME}
    Click Element                       ${XPATH}

Click On Parent Node Button
    [Arguments]    ${PARENT_NODE}
    ${XPATH} =     list_xpath.Obtain Parent Node Button    ${PARENT_NODE}
    Wait Until Page Contains Element    ${XPATH}    ${LG_TIME}
    Click Element                       ${XPATH}
    
Confirm New Hierarchy Group Was Created
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.confirmation_button}    ${LG_TIME}
    Click Button    ${hierarchy_groups_page_locators.confirmation_button}

Get Link from A Group Name And Go To It
    [Arguments]    ${GROUP_NAME}
    ${GROUP_LINK} =    url_saver.Get Url From Group    ${GROUP_NAME}
    Go To    ${GROUP_LINK}

Delete Hierarchy Group
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.delete_button}    ${LG_TIME}
    Click Button    ${hierarchy_groups_page_locators.delete_button}
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.confirm_deletion}    ${LG_TIME}
    Click Button    ${hierarchy_groups_page_locators.confirm_deletion}

Click Hierarchy Group Updated Successfully Notification
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.confirmation_button}    ${LG_TIME}
    Click Button    ${hierarchy_groups_page_locators.confirmation_button}

Click On Edit On A Group
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.edit_button}    ${LG_TIME}
    Click Button    ${hierarchy_groups_page_locators.edit_button}

Edit Name And Description Of A Group
    [Arguments]    ${NEW_NAME}    ${NEW_DESCRIPTION}
    Input Text    ${hierarchy_groups_page_locators.input_name}    ${NEW_NAME}
    Input Text    ${hierarchy_groups_page_locators.input_description}    ${NEW_DESCRIPTION}


Save Update Of A Group
    Click Button  ${hierarchy_groups_page_locators.save_button}

Click On Cancel Button
    Wait Until Page Contains Element    ${hierarchy_groups_page_locators.cancel_button}    ${LG_TIME}
    Click Button  ${hierarchy_groups_page_locators.cancel_button}

Verify The Update 
    [Arguments]    ${NEW_NAME}    ${NEW_DESCRIPTION}
    Click on Edit on a group
    ${NAME} =    Get Element Attribute    ${hierarchy_groups_page_locators.input_name}    value
    ${DESCRIPTION} =    Get Element Attribute    ${hierarchy_groups_page_locators.input_description}    value
    Should Be Equal As Strings    ${NAME}    ${NEW_NAME}
    Should Be Equal As Strings    ${DESCRIPTION}    ${NEW_DESCRIPTION}
    Click on Cancel Button

Click On Hierarchy Group For Edit
    [Arguments]    ${HIERARCHY_GROUP}
    Wait Until Element Is Visible    ${hierarchy_groups_page_locators.icon_root_tree}    ${LG_TIME}
    # Click Element                    ${hierarchy_groups_page_locators.icon_root_tree}
    ${XPATH} =    list_xpath.Obtain Xpath For Hierarchy Group    ${HIERARCHY_GROUP}
    Wait Until Element Is Visible    ${XPATH}    ${LG_TIME}
    Click Element                    ${XPATH}

Click On Root Hierarchy Group Button
    Wait Until Element Is Visible    ${hierarchy_groups_page_locators.icon_root_tree}    ${LG_TIME}
    Click Element                    ${hierarchy_groups_page_locators.icon_root_tree}

Click On Hierarchy Group Button At Below Level
    [Arguments]    ${GROUP_NAME_LEVEL}
    ${LEVEL} =    list_xpath.Obtain Xpath For Hierarchy Group Below Level Button    ${GROUP_NAME_LEVEL}
    Wait Until Element Is Visible    ${LEVEL}    ${LG_TIME}
    Click Element                    ${LEVEL}

Click On Hierarchy Group At Below Level
    [Arguments]    ${GROUP_NAME_LEVEL}
    ${LEVEL} =    list_xpath.Obtain Xpath For Hierarchy Group Below Level    ${GROUP_NAME_LEVEL}
    Wait Until Element Is Visible    ${LEVEL}    ${LG_TIME}
    Click Element                    ${LEVEL}

Verify That Hierarchy Group Was Loaded
    Wait Until Element Is Visible    ${hierarchy_groups_page_locators.name_label}           ${LG_TIME}
    Wait Until Element Is Visible    ${hierarchy_groups_page_locators.parent_node_label}    ${LG_TIME}
    Wait Until Element Is Visible    ${hierarchy_groups_page_locators.description_label}    ${LG_TIME}

Search For A Hierarchy Group In The Search Bar
    [Arguments]    ${GROUP_NAME_LEVEL}
    ${LEVEL} =    list_xpath.Obtain Xpath For Hierarchy Group Below Level    ${GROUP_NAME_LEVEL}
    Wait Until Element Is Visible    ${hierarchy_groups_page_locators.search_input_text}    ${LG_TIME}
    Click Element                    ${hierarchy_groups_page_locators.search_input_text}
    Input Text                       ${hierarchy_groups_page_locators.search_input_text}    ${GROUP_NAME_LEVEL}
    Wait Until Element Is Visible    ${LEVEL}    ${LG_TIME}
    Click Element                    ${LEVEL}