Load Tax Manager Navigation Bar
    ${LOGIN} =    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${otnavbar_locators.fuel_button}    ${TIME}
    IF    '${LOGIN}[0]'=='FAIL'
        ${URL} =    Collections.Get From Dictionary    ${DEVICE}    ${ENVIRONMENT}
        Go To    ${URL}
    END
    Wait Until Element Is Visible    ${otnavbar_locators.distance_button}          ${TIME}
    Wait Until Element Is Visible    ${otnavbar_locators.reports_button}           ${TIME}
    Wait Until Element Is Visible    ${otnavbar_locators.tax_filings_button}       ${TIME}
    Wait Until Element Is Visible    ${otnavbar_locators.vehicles_button}          ${TIME}
    Wait Until Element Is Visible    ${otnavbar_locators.administration_button}    ${TIME}
    Wait Until Element Is Visible    ${otnavbar_locators.app_admin_button}         ${TIME}
    Wait Until Element Is Visible    ${otnavbar_locators.legal_button}             ${TIME}
    Wait Until Element Is Visible    ${otnavbar_locators.logout_button}            ${TIME}
    Wait Until Element Is Visible    ${otnavbar_locators.title}                    ${TIME}

Click On Logout Button
    Wait Until Element Is Visible    ${otnavbar_locators.logout_button}    ${TIME}
    Click Element                    ${otnavbar_locators.logout_button}

Click On Fuel Tab
    Wait Until Element Is Visible    ${otnavbar_locators.fuel_button}    ${TIME}
    Click Element                    ${otnavbar_locators.fuel_button}

Click On Distance Tab
    Wait Until Element Is Visible    ${otnavbar_locators.distance_button}    ${TIME}
    Click Element                    ${otnavbar_locators.distance_button}

Click On Reports Tab
    Wait Until Element Is Visible    ${otnavbar_locators.reports_button}    ${TIME}
    Click Element                    ${otnavbar_locators.reports_button}

Click On Tax Filings Tab
    Wait Until Element Is Visible    ${otnavbar_locators.tax_filings_button}    ${TIME}
    Click Element                    ${otnavbar_locators.tax_filings_button}

Click On Vehicles Tab
    Wait Until Element Is Visible    ${otnavbar_locators.vehicles_button}    ${TIME}
    Click Element                    ${otnavbar_locators.vehicles_button}

Click On Administration Tab
    Wait Until Element Is Visible    ${otnavbar_locators.administration_button}    ${TIME}
    Click Element                    ${otnavbar_locators.administration_button}

Click On App Admin Tab
    Wait Until Element Is Visible    ${otnavbar_locators.app_admin_button}    ${TIME}
    Click Element                    ${otnavbar_locators.app_admin_button}

Click On Legal Tab
    Wait Until Element Is Visible    ${otnavbar_locators.legal_button}    ${TIME}
    Click Element                    ${otnavbar_locators.legal_button}