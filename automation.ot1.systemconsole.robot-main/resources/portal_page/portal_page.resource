
Load Users Tab From Portal Page
    Wait Until Element Is Visible    dom:${users_page_locators.users_iframe}     30

Navigate To User From Portal Page
    Wait Until Element Is Visible    dom:${portal_locators.users_tab}    30
    Click Element                    dom:${portal_locators.users_tab}
    Wait Until Element Is Visible    dom:${users_page_locators.users_iframe}     30
    
Navigate To Roles From Portal Page
    Wait Until Element Is Visible    dom:${portal_locators.roles_tab}    30
    Click Element                    dom:${portal_locators.roles_tab}
    
Navigate To Hierarchy From Portal Page
    Wait Until Element Is Visible    dom:${portal_locators.hierarchy_tab}    30
    Click Element                    dom:${portal_locators.hierarchy_tab}
    Wait Until Element Is Visible    dom:${hierarchy_groups_page_locators.hierarchy_iframe}    30

Navigate To Portal Page
    ${URL} =    Collections.Get From Dictionary    ${HIRARCHY}    ${ENVIRONMENT}
    Selenium2Library.Go To    ${URL}