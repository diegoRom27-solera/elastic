Software Version Is Verified
    [Documentation]    This function verifies the Software Version
    [Arguments]    ${SOFTWARE_VERSION}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Software Version: ${SOFTWARE_VERSION}')]    10s

HOS Engine Version Is Verified
    [Documentation]    This function verifies the HOS Engine Version
    [Arguments]    ${HOS_ENGINE_VERSION}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'HOS Engine Version: ${HOS_ENGINE_VERSION}')]    10s

Software Load Date Is Verified
    [Documentation]    This function verifies the Software Load Date
    [Arguments]    ${SOFTWARE_LOAD_VERSION}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Software Load Date: ${SOFTWARE_LOAD_VERSION}')]    10s

Software Size Is Verified
    [Documentation]    This function verifies the Software Size Is Verified
    [Arguments]    ${SOFTWARE_SIZE}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Software Size: ${SOFTWARE_SIZE}')]    10s

Software Variant Is Verified
    [Documentation]    This function verifies the Software Variant
    [Arguments]    ${SOFTWARE_SIZE}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Software Variant: ${SOFTWARE_SIZE}')]    10s

Phone Number Is Verified
    [Documentation]    This function verifies the Phone Number
    [Arguments]    ${PHONE_NUMBER}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Phone Number: ${PHONE_NUMBER}')]    10s

IMEI Is Verified
    [Documentation]    This function verifies the IMEI
    [Arguments]    ${IMEI}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'IMEI: ${IMEI}')]    10s

Bluetooth ID Is Verified
    [Documentation]    This function verifies the Bluetooth ID
    [Arguments]    ${BLUETOOTH}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Bluetooth ID: ${BLUETOOTH}')]    10s

Omnitracs XRS Relay ID Is Verified
    [Documentation]    This function verifies the Omnitracs XRS Relay ID
    [Arguments]    ${RELAY_ID}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Omnitracs XRS Relay ID: ${RELAY_ID}')]    10s

Omnitracs XRS Relay Is Verified
    [Documentation]    This function verifies the Omnitracs XRS Relay
    [Arguments]    ${RELAY}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Omnitracs XRS Relay: ${RELAY}')]    10s

Omnitracs XRS MP Version Is Verified
    [Documentation]    This function verifies the Omnitracs XRS MP Version
    [Arguments]    ${MP}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Omnitracs XRS MP Version: ${MP}')]    10s

Omnitracs XRS CP Application Is Verified
    [Documentation]    This function verifies the Omnitracs XRS CP Application
    [Arguments]    ${CP}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Omnitracs XRS CP Application: ${CP}')]    10s

Omnitracs XRS Jurisdiction DB Is Verified
    [Documentation]    This function verifies the Omnitracs XRS Jurisdiction DB
    [Arguments]    ${JURISDICTION_DB}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Omnitracs XRS Jurisdiction DB: ${JURISDICTION_DB}')]    10s

Omnitracs XRS Toll Road DB Is Verified
    [Documentation]    This function verifies the Omnitracs XRS Toll Road DB
    [Arguments]    ${ROAD_DB}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, 'Omnitracs XRS Toll Road DB: ${ROAD_DB}')]    10s

Click On Update Omnitracs XRS Relay Now
    AppiumLibrary.Wait Until Element Is visible    ${AboutPageLocators.updateOmnitracsXRSRelayNowButton}    10s
    AppiumLibrary.Click Element    ${AboutPageLocators.updateOmnitracsXRSRelayNowButton}

Click On Update Omnitracs XRS Mobile
    AppiumLibrary.Wait Until Element Is visible    ${AboutPageLocators.updateOmnitracsXRSMobileButton}    10s
    AppiumLibrary.Click Element    ${AboutPageLocators.updateOmnitracsXRSMobileButton}

Click On Back
    AppiumLibrary.Wait Until Element Is visible    ${AboutPageLocators.backButton}    10s
    AppiumLibrary.Click Element    ${AboutPageLocators.backButton}