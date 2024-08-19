Load Login Page
    Wait Until Element Is Visible    ${login_page_locators.user_id}            ${ME_TIME}
    Wait Until Element Is Visible    ${login_page_locators.password}           ${TIME}
    Wait Until Element Is Visible    ${login_page_locators.forgot_password}    ${TIME}
    Wait Until Element Is Visible    ${login_page_locators.login_button}       ${TIME}

Introduce User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${login_page_locators.user_id}    ${TIME}
    Input Text                       ${login_page_locators.user_id}    ${credentials}[0]

Introduce Password
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${login_page_locators.password}    ${TIME}
    Input Text                       ${login_page_locators.password}    ${credentials}[1]

Click On Login Button
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${login_page_locators.login_button}    ${TIME}
    Click Element                    ${login_page_locators.login_button}

Refresh Page
    Execute Javascript    window.location.reload(true)