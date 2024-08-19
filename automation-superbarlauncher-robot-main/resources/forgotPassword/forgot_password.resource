
Click On Forgot Password Button
    Wait Until Element Is Visible    ${forgot_password_locators.forgot_password_button}    ${TIME}
    Click Element                    ${forgot_password_locators.forgot_password_button}

Click On Send Verification Code Button
    Wait Until Element Is Visible    ${forgot_password_locators.send_verification_button}   ${TIME}
    Click Element                    ${forgot_password_locators.send_verification_button}

Validate That Send Verification Code Button Is Displayed
    Wait Until Element Is Visible    ${forgot_password_locators.send_verification_button}   ${TIME}

Go To YopMail Page
    Go To    https://yopmail.com/
    Wait Until Element Is Visible    ${forgot_password_locators.email_yopmail_input_text}   ${TIME}
    Wait Until Element Is Visible    ${forgot_password_locators.go_yopmail_button}          ${TIME}

Enter Email In YopMail Page
    [Arguments]    ${email}
    Wait Until Element Is Visible    ${forgot_password_locators.email_yopmail_input_text}    ${TIME}
    Input Text                       ${forgot_password_locators.email_yopmail_input_text}    ${email}

Click On Go Button In YopMail Page
    Wait Until Element Is Visible    ${forgot_password_locators.go_yopmail_button}    ${TIME}
    Click Element                    ${forgot_password_locators.go_yopmail_button}

Select YopMail Inbox iFrame
    Select Frame                     ${forgot_password_locators.inbox_iframe_yopmail}
    Wait Until Element Is Visible    ${forgot_password_locators.email_yopmail_received}    ${TIME}

Unselect YopMail Inbox iFrame
    Unselect Frame

Click On First Email Received
    Wait Until Element Is Visible    ${forgot_password_locators.email_yopmail_received}    ${TIME}
    Click Element                    ${forgot_password_locators.email_yopmail_received}

Click On Refresh Button From YopMail
    Sleep    ${MD_TIME}
    Sleep    ${MD_TIME}
    Wait Until Element Is Visible    ${forgot_password_locators.refresh_yopmail_button}    ${TIME}
    Click Element                    ${forgot_password_locators.refresh_yopmail_button}

Select YopMail Mail iFrame
    Select Frame                     ${forgot_password_locators.mail_iframe_yopmail}
    Wait Until Element Is Visible    ${forgot_password_locators.code_mail_verification}    ${TIME}

Unselect YopMail Mail iFrame
    Unselect Frame

Verify That Enter Code Input Text Is Displayed
    Wait Until Element Is Visible    ${forgot_password_locators.enter_code_input_text}    ${TIME}

Enter Code In Enter Code Input Text
    [Arguments]    ${code}
    Wait Until Element Is Visible    ${forgot_password_locators.enter_code_input_text}    ${TIME}
    Input Text                       ${forgot_password_locators.enter_code_input_text}    ${code}

Click On Verify Code Button
    Wait Until Element Is Visible    ${forgot_password_locators.verify_code_button}       ${TIME}
    Click Element                    ${forgot_password_locators.verify_code_button}

Click On Send New Code Button
    Wait Until Element Is Visible    ${forgot_password_locators.send_new_code_button}     ${TIME}
    Click Element                    ${forgot_password_locators.send_new_code_button}

Close Advertising Pop Up
    Select Frame                     ${forgot_password_locators.advertising_iframe}
    Wait Until Element Is Visible    ${forgot_password_locators.close_popup_button}       ${SH_TIME}
    Click Element                    ${forgot_password_locators.close_popup_button}

Verify An Error Message Because An Incorrect Verification Code Was Sent
    Wait Until Element Is Visible    ${forgot_password_locators.incorrect_verification_code}    ${TIME}

Verify That Verification Code Is Correct
    Wait Until Element Is Visible    ${forgot_password_locators.account_do_not_exist}         ${TIME}
    Wait Until Element Is Visible    ${forgot_password_locators.code_has_been_verified}       ${TIME}

Obtain The Verification Code
    Wait Until Element Is Visible    ${forgot_password_locators.code_verification}            ${TIME}
    ${text} =    Get Text            ${forgot_password_locators.code_verification}
    ${CODE} =    list_xpath.Remove Text        ${text}
    [Return]    ${CODE}
