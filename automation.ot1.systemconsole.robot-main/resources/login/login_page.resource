
Introduce User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${login_page_locators.email_input}    ${LG_TIME}
    Input Text    ${login_page_locators.email_input}    ${credentials}[0]

Click Next Button
    Wait Until Element Is Visible    ${login_page_locators.next_button}    ${LG_TIME}
    Click Element    ${login_page_locators.next_button}

Load System Console Login Page
    Wait Until Element Is Visible    ${login_page_locators.welcome_message}    ${LG_TIME}
    Wait Until Element Is Visible    ${login_page_locators.next_button}        ${LG_TIME}
    Sleep    2

Introduce Username To Okta
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${okta_login_page_locators.username}    ${LG_TIME}
    Input Text    ${okta_login_page_locators.username}    ${credentials}[0]

Introduce Password To Okta
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${okta_login_page_locators.password}    ${LG_TIME}
    Input Text    ${okta_login_page_locators.password}    ${credentials}[1]

Click Sign In Button From Okta
    Wait Until Element Is Visible    ${okta_login_page_locators.sign_in}    ${LG_TIME}
    Click Element    ${okta_login_page_locators.sign_in}

Click Remember Checkbox From Okta
    Wait Until Element Is Visible    ${okta_login_page_locators.remember}    ${LG_TIME}
    Click Element    ${okta_login_page_locators.remember}

Load The Okta Page
    Wait Until Element Is Visible    ${okta_login_page_locators.sign_in_message}    ${LG_TIME}

Load Solera Page
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_title}    ${LG_TIME}
    ${FLAG} =    Run Keyword and Ignore Error    Title Should Be    Sign in to your account
    Log    ${FLAG}
    IF    '${FLAG}[0]'=='PASS'
        Log    ${FLAG}
    ELSE
        Title Should Be    Iniciar sesión con tu cuenta
        Log    ${FLAG}
    END

Introduce Username To Solera
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_input_text}    ${LG_TIME}
    Input Text    ${solera_login_page_locators.email_input_text}    ${credentials}[0]
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}         ${LG_TIME}
    Click Element    ${solera_login_page_locators.next_button}

Introduce Password To Solera
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_input_text}    ${LG_TIME}
    Input Text    ${solera_login_page_locators.password_input_text}    ${credentials}[1]
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}            ${LG_TIME}
    Click Element    ${solera_login_page_locators.next_button}

Stay Signed In
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_title}    ${LG_TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.no_button}       ${LG_TIME}
    Click Element    ${solera_login_page_locators.no_button}