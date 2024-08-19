
Load Users Tab From Portal Page
    Wait Until Element Is Visible    ${users_page_locators.title}    ${LG_TIME}

Navigate To The Portal Users Page
    Click Element                    dom:${users_page_locators.users_tab}
    Wait Until Element Is Visible    dom:${users_page_locators.users_iframe}    ${LG_TIME}

Select Main Iframe From Portal Users Page
    Wait Until Element Is Visible    dom:${users_page_locators.users_iframe}    ${LG_TIME}
    Select Frame                     dom:${users_page_locators.users_iframe}
    Wait Until Element Is Visible    ${users_page_locators.title}               ${LG_TIME}

Unselect Main Iframe From Portal Users Page
    Unselect Frame
