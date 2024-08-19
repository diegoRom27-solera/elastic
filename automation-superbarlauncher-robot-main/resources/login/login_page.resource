
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
    Input Text    ${solera_login_page_locators.email_input}    ${credentials}[6]

Introduce Password With An External User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_input2}         ${TIME}
    Input Text    ${solera_login_page_locators.password_input2}    ${credentials}[7]
    
Click On Login Button
    Sleep    ${SH_TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.login_button2}           ${TIME}
    Click Element    ${solera_login_page_locators.login_button2}

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
    Input Text    ${solera_login_page_locators.email_input_text}    ${credentials}[3]
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

Introduce Password To Solera With An External User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_input_text}     ${TIME}
    Input Text    ${solera_login_page_locators.password_input_text}    ${credentials}[4]
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

Stay Signed In
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_title}            ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.no_button}               ${TIME}
    Click Element    ${solera_login_page_locators.no_button}

Click On Next Button
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

#SSO Login Page without GP2
Load Fleet Solutions Login Page
    Wait Until Element Is Visible    ${solera_login_page_locators.fleet_solutions_logo}    ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}           ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button_fleet}       ${TIME}

Introduce Email Address To SSO Without GP2
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}      ${TIME}
    Input Text    ${solera_login_page_locators.email_textbox}                         ${credentials}
    Click Element    ${solera_login_page_locators.next_button_fleet}

Introduce Username To Microsoft Login
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_input_text}        ${TIME}
    Clear Element Text    ${solera_login_page_locators.email_input_text}
    Input Text    ${solera_login_page_locators.email_input_text}    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

Load GP2 Login Page
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_logo}           ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.next_solera_button}    ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}         ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.bus_perf_label}        ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.driv_expe_label}       ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.fleet_saf_label}       ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.rout_plan_label}       ${TIME}

Old Load GP2 Login Page
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_logo}           ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.next_solera_button}    ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}         ${TIME}

Load Change Password Page
    Wait Until Element Is Visible    ${solera_login_page_locators.password_textbox}        ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.new_pass_textbox}        ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.conf_pass_textbox}       ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.cancel_button}           ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.continue_button}         ${TIME}

Click On Forgot My Password
    Wait Until Element Is Visible    ${solera_login_page_locators.forgot_password}         ${TIME}
    Click Element                    ${solera_login_page_locators.forgot_password}

Introduce Email Address To GP2 Authorization
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}      ${TIME}
    Input Text    ${solera_login_page_locators.email_textbox}                         ${credentials}
    Click Element    ${solera_login_page_locators.next_solera_button}

Introduce Email Address To GP2 Authorization From The Email GP2 Page
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}      ${TIME}
    Input Text    ${solera_login_page_locators.email_textbox}                         ${credentials}
    Click Element    ${solera_login_page_locators.continue_button}

Introduce Password To GP2 Authorization from Internal User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_input_text}     ${TIME}
    Input Text    ${solera_login_page_locators.password_input_text}    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.next_button}             ${TIME}
    Click Element    ${solera_login_page_locators.next_button}

Validate That Password GP2 Page Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}           ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_textbox}        ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.sign_in_button}          ${TIME}

Validate That Password GP2 Page With Email Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.filed_email_texbox}      ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_textbox}        ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.sign_in_button}          ${TIME}

Introduce Password To GP2 Authorization from External User
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_textbox}     ${TIME}
    Input Text    ${solera_login_page_locators.password_textbox}    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.sign_in_button}       ${TIME}
    Click Element    ${solera_login_page_locators.sign_in_button}

Validate That Error Message About Empty Email Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.empty_mesaage}        ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.require_mesaage}      ${TIME}

Validate That Error Message About Invalid Email Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.invalid_email}            ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_invalid_mesaage}    ${TIME}

Validate That Secound Page To Login GP2 Page Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.password_textbox}         ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.in_pass_solera_login}     ${TIME}

Validate Message About Failed Username Or Password Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.pass_fail_message}      ${TIME}

Validate That Solera Logo Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.solera_logo_em_page}    ${TIME}

Validate That Error Message Is Displayed Because Email Or Password Is Wrong
    Wait Until Element Is Visible    ${solera_login_page_locators.pass_email_wrong_mes}    ${TIME}

Introduce Current Passwrod To Change Password
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.password_textbox}   ${TIME}
    Input Text       ${solera_login_page_locators.password_textbox}                   ${credentials}

Introduce New Passwrod To Change Password
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.new_pass_textbox}   ${TIME}
    Input Text       ${solera_login_page_locators.new_pass_textbox}                   ${credentials}

Introduce Retype New Passwrod To Change Password
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.conf_pass_textbox}   ${TIME}
    Input Text       ${solera_login_page_locators.conf_pass_textbox}                   ${credentials}

Click On Cancel Button From Change Password Page
    Wait Until Element Is Visible    ${solera_login_page_locators.cancel_button}      ${TIME}
    Click Element    ${solera_login_page_locators.cancel_button}

Click On Continue Button From Change Password Page
    Wait Until Element Is Visible    ${solera_login_page_locators.continue_button}    ${TIME}
    Click Element    ${solera_login_page_locators.continue_button}

Validate An Error Message With Wrong Password
    Wait Until Element Is Visible    ${solera_login_page_locators.wrong_pass_message}    ${TIME}

Validate That The New Password And Retype Password Do Not Match
    Wait Until Element Is Visible    ${solera_login_page_locators.match_pass_message}    ${TIME}

Validate That Any Of The Parameters Of the New Passwrod Are Wrong
    Wait Until Element Is Visible    ${solera_login_page_locators.all_pass_wrong}        ${TIME}

Validate Error Message About Wrong User
    Wait Until Element Is Visible    ${solera_login_page_locators.wrong_username}        ${TIME}

Validate Error Message About Wrong Password
    Wait Until Element Is Visible    ${solera_login_page_locators.bad_password}          ${TIME}

Validate That Email GP2 Page Is Displayed
    Wait Until Element Is Visible    ${solera_login_page_locators.continue_button}       ${TIME}
    Wait Until Element Is Visible    ${solera_login_page_locators.email_textbox}         ${TIME}

Click On Cancel Button From Email GP2 Page
    Wait Until Element Is Visible    ${solera_login_page_locators.cancel_button}      ${TIME}
    Click Element    ${solera_login_page_locators.cancel_button}

Validate Correct Email Is Displayed In Enter Password Page
    [Arguments]    ${credentials}
    Wait Until Element Is Visible    ${solera_login_page_locators.filed_email_texbox}    ${TIME}
    ${EMAIL} =    Get Value    ${solera_login_page_locators.filed_email_texbox}
    Log    ${EMAIL}
    IF    '${EMAIL}' == '${credentials}'
        Log    Email is correct
    ELSE
        Log    Email is not correct
        Fail
    END

Validate An Error Message Is Displayed Because An Empty Password
    Wait Until Element Is Visible    ${solera_login_page_locators.empty_password}        ${TIME}
