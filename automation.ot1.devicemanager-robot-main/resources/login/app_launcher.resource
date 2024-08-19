
Load App Launcher Home Page
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_left}         ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.home_button_left}              ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.system_console_button_left}    ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_main}         ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.all_apps_button_main}          ${TIME}
    Wait Until Element Is Visible    ${app_launcher_locators.system_button_main}            ${TIME}

Click On Home Menu
    Wait Until Element Is Visible    ${app_launcher_locators.home_button_left}               ${TIME}
    Click Element                    ${app_launcher_locators.home_button_left}

Click On Device Manager Card
    Wait Until Element Is Visible    ${app_launcher_locators.device_manager_app}            ${TIME}
    Click Element                    ${app_launcher_locators.device_manager_app}

Mouse Over On System Console Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.system_console_button_left}    ${TIME}
    Mouse Over                       ${app_launcher_locators.system_console_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.system_console_left_focus}     ${TIME}

Click On System Console Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.system_button_main}            ${TIME}
    Click Element                    ${app_launcher_locators.system_button_main}

Click On Device Manager Option
    Wait Until Element Is Visible    ${app_launcher_locators.device_manager_sidebar}        ${TIME}
    Click Element                    ${app_launcher_locators.device_manager_sidebar}

Click On Device Manager Favorite Icon From Sidebar
    Wait Until Element Is Visible    ${app_launcher_locators.device_manager_sidebar_fvic}    ${TIME}
    Click Element                    ${app_launcher_locators.device_manager_sidebar_fvic}

Mouse Over On Favorites Left Button
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_left}          ${TIME}
    Mouse Over                       ${app_launcher_locators.favorites_button_left}
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_left_focus}    ${TIME}

Click On Favorites Main Button
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_main}          ${TIME}
    Click Element                    ${app_launcher_locators.favorites_button_main}

Verify That Favorites Main Button Is Active
    Wait Until Element Is Visible    ${app_launcher_locators.favorites_button_main_active}    ${TIME}

Select Main Iframe from App Launcher Page
    Wait Until Element Is Visible                dom:${app_launcher_locators.iframe}        ${TIME}
    Select Frame                                 dom:${app_launcher_locators.iframe}

Unselect Main Iframe from App Launcher Page
    Unselect Frame

Click On User Avatar
    [Arguments]    ${user}
    ${XPATH} =    list_xpath.Obtain Xpath Initals User Name    ${user}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Click On Sign Out Button
    Wait Until Element Is Visible    ${app_launcher_locators.sign_out_button}    ${TIME}
    Click Element                    ${app_launcher_locators.sign_out_button}

Click On Favorite Icon From An App
    [Arguments]    ${app}
    ${XPATH} =    list_xpath.Obatin Xpath Fav Icon App    ${app}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Sleep    ${MC_TIME}
    Click Element                    ${XPATH}
