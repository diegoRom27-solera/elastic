
Load Solera Login Page
    Wait Until Element Is Visible    ${solera_login_page_locators.welcome_message}         ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.next_solera_button}      ${TIME}
    Sleep    ${SH_TIME}

Introduce User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_input}             ${TIME}
    Input Text    ${solera_login_page_locators.email_input}    ${credentials}[0]

Introduce User With An External User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_input}             ${TIME}
    Input Text    ${solera_login_page_locators.email_input}    ${credentials}[2]

Introduce Password With An External User
    [Arguments]    ${credentials}
    # IF    '${ENVIRONMENT}'=='INT'
        Wait Until Element Is Visible    ${solera_login_page_locators.password_input2}         ${TIME}
        Input Text    ${solera_login_page_locators.password_input2}    ${credentials}[3]
    # ELSE
    #     Wait Until Element Is Visible    ${solera_login_page_locators.password_input}          ${TIME}
    #     Input Text    ${solera_login_page_locators.password_input}    ${credentials}[3]
    # END

Introduce User With A Wrong User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_input}             ${TIME}
    Input Text    ${solera_login_page_locators.email_input}    ${credentials}[4]

Introduce Password With A Wrong User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_input2}         ${TIME}
    Input Text    ${solera_login_page_locators.password_input2}    ${credentials}[5]
    
Click On Login Button
    Sleep    ${SH_TIME}
    # IF    '${ENVIRONMENT}'=='INT'
        Wait Until Element Is Visible    ${solera_login_page_locators.login_button2}           ${TIME}
        Click Element    ${solera_login_page_locators.login_button2}
    # ELSE
    #     Wait Until Element Is Visible    ${solera_login_page_locators.login_button}            ${TIME}
    #     Click Element    ${solera_login_page_locators.login_button}
    # END

Click Next Button
    Wait Until Element Is Visible    ${solera_login_page_locators.next_solera_button}      ${TIME}
    Click Element    ${solera_login_page_locators.next_solera_button}

Load Solera Page
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_title}            ${TIME}
    Title Should Be    Sign in to your account

Introduce Username To Solera With An Internal User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_input_text}        ${TIME}
    Input Text    ${solera_login_page_locators.email_input_text}    ${credentials}[0]
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

Introduce Password To Solera With An Internal User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_input_text}     ${TIME}
    Input Text    ${solera_login_page_locators.password_input_text}    ${credentials}[1]
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

Introduce Username To Solera With An External User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_input_text}        ${TIME}
    Input Text    ${solera_login_page_locators.email_input_text}    ${credentials}[2]
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

Introduce Password To Solera With An External User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_input_text}     ${TIME}
    Input Text    ${solera_login_page_locators.password_input_text}    ${credentials}[3]
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

Stay Signed In
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_title}            ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.no_button}               ${TIME}
    Click Element    ${solera_login_page_locators.no_button}

#New GP2 Login Page
Load GP2 Login Page
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_logo}           ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.next_solera_button}    ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}         ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.bus_perf_label}        ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.driv_expe_label}       ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.fleet_saf_label}       ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.rout_plan_label}       ${TIME}

Introduce Email Address To GP2 Authorization
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}      ${TIME}
    Input Text    ${solera_login_page_locators.email_textbox}                         ${credentials}
    Click Element    ${solera_login_page_locators.next_solera_button}

Introduce Password To GP2 Authorization from External User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_textbox}     ${TIME}
    Input Text    ${solera_login_page_locators.password_textbox}    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.sign_in_button}       ${TIME}
    Click Element    ${solera_login_page_locators.sign_in_button}

Validate Message About Failed Username Or Password Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.pass_fail_message}      ${TIME}

Validate That Error Message Is Displayed Because Email Or Password Is Wrong
    Wait Until Element Is Visible    ${solera_login_page_locators.pass_email_wrong_mes}    ${TIME}
