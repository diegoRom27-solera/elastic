
Load The System Console Home Page
    Wait Until Element Is Visible       dom:${home_page_locators.onboarding_tab}             ${LG_TIME}
    # ${LOADING} =    list_xpath.Loading Xpath
    # Wait Until Page Contains Element    ${LOADING}                                           50
    Wait Until Element Is Visible       dom:${onboarding_page_locators.onboarding_iframe}    ${LG_TIME}
    Select Frame                        dom:${onboarding_page_locators.onboarding_iframe}
    Wait Until Element Is Visible       ${onboarding_page_locators.title}                    ${LG_TIME}
    Unselect Frame

Navigate To Portal Home Page
    ${URL} =    Collections.Get From Dictionary    ${HOME}    ${ENVIRONMENT}
    Go To    ${URL}

Load The Portal Home Page
    Wait Until Element Is Visible    ${portal_page_locators.menu_options}    ${LG_TIME}

Click On The Hierarchy Groups Button
    Wait Until Element Is Visible    ${portal_page_locators.hierarchy_groups_button}    ${LG_TIME}
    Click Element                    ${portal_page_locators.hierarchy_groups_button}
    