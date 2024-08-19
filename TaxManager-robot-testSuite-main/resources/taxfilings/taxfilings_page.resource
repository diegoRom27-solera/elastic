Load Tax Filing Page
    Wait Until Element Is Visible    ${taxfilings_page_locators.tax_filings_title}            ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.begin_new_filing_span}        ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.pagination_nav}               ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.page_select_select}           ${TIME}

Click On Begin New Filing 
    Wait Until Element Is Visible    ${taxfilings_page_locators.begin_new_filing_span}        ${TIME}
    Click Element                    ${taxfilings_page_locators.begin_new_filing_span}

Load New Filing Tab
    Wait Until Element Is Visible    ${taxfilings_page_locators.new_filing_title}             ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.tax_account_label}            ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.tax_account_select}           ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.filing_type_label}            ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.filing_type_select}           ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.filing_period_label}          ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.filing_period_select}         ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.turnpike_miles_label}         ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.turnpike_miles_input}         ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.close_icon_a}                 ${TIME}

Select Tax Accounts   
    [Arguments]    ${taxaccount}
    Wait Until Element Is Visible    ${taxfilings_page_locators.tax_account_select}           ${TIME}
    Select From List By Label        ${taxfilings_page_locators.tax_account_select}           ${taxaccount}

Select Filing Type
    [Arguments]    ${filingType}
    Wait Until Element Is Visible    ${taxfilings_page_locators.filing_type_select}           ${TIME}
    Select From List By Label        ${taxfilings_page_locators.filing_type_select}           ${filingType}

Select Filing Period
    [Arguments]    ${filingPeriod}
    Wait Until Element Is Visible    ${taxfilings_page_locators.filing_period_select}         ${TIME}
    Select From List By Label        ${taxfilings_page_locators.filing_period_select}         ${filingPeriod}

Select Filing Method
    [Arguments]    ${filingMethod}
    Wait Until Element Is Visible    ${taxfilings_page_locators.filing_method_label}          ${TIME}
    Select From List By Label        ${taxfilings_page_locators.filing_method_select}         ${filingMethod}

Enable NY Filing Method
    Element Should Not Be Visible    ${taxfilings_page_locators.filing_method_label}
    Element Should Not Be Visible    ${taxfilings_page_locators.filing_method_select}

Enable Quarter Periods 
    Element Should Not Be Visible    ${taxfilings_page_locators.twenty_two_first_quarter_option}
    Element Should Not Be Visible    ${taxfilings_page_locators.twenty_two_second_quarter_option}
    Element Should Not Be Visible    ${taxfilings_page_locators.twenty_two_third_quarter_option}
    Element Should Not Be Visible    ${taxfilings_page_locators.twenty_two_fourth_quarter_option}
    Element Should Not Be Visible    ${taxfilings_page_locators.twenty_three_first_quarter_option}
    Element Should Not Be Visible    ${taxfilings_page_locators.twenty_three_second_quarter_option}

Enable Monthly Periods 
    Element Should Not Be Visible    ${taxfilings_page_locators.October_twenty_two}
    Element Should Not Be Visible    ${taxfilings_page_locators.November_twenty_two}
    Element Should Not Be Visible    ${taxfilings_page_locators.December_twenty_two}
    Element Should Not Be Visible    ${taxfilings_page_locators.January_twenty_three}
    Element Should Not Be Visible    ${taxfilings_page_locators.February_twenty_three}
    Element Should Not Be Visible    ${taxfilings_page_locators.March_twenty_three}
    Element Should Not Be Visible    ${taxfilings_page_locators.April_twenty_three}
    Element Should Not Be Visible    ${taxfilings_page_locators.May_twenty_three}
    Element Should Not Be Visible    ${taxfilings_page_locators.June_twenty_three}

Enable Filing HUT Type 
    Element Should Not Be Visible    ${taxfilings_page_locators.new_york_select}
    Element Should Not Be Visible    ${taxfilings_page_locators.kentucky_select}
    Element Should Not Be Visible    ${taxfilings_page_locators.new_mexico_select}
    Element Should Not Be Visible    ${taxfilings_page_locators.oregon_hut_select}
    Element Should Not Be Visible    ${taxfilings_page_locators.connecticut_hut_select}

Cancel New Filing Type 
    Wait Until Element Is Visible    ${taxfilings_page_locators.close_icon_a}          ${TIME}
    Click Element                    ${taxfilings_page_locators.close_icon_a}

Enable to see Cancel Icon 
    Element Should Not Be Visible    ${taxfilings_page_locators.close_icon_a}

Click On Generate Button 
    Wait Until Element Is Visible    ${taxfilings_page_locators.generate_filing_button}          ${TIME}
    Click Element                    ${taxfilings_page_locators.generate_filing_button}

Error Message should Appers 
    Wait Until Element Is Visible    ${taxfilings_page_locators.error_title}              ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.message_section}          ${TIME}
    Wait Until Element Is Visible    ${taxfilings_page_locators.ok_button}                ${TIME}

Click On OK Button from Error Message 
    Wait Until Element Is Visible    ${taxfilings_page_locators.ok_button}                ${TIME}
    Click Element                    ${taxfilings_page_locators.ok_button}

Obtain Quarter 
    ${quarter}=    quarters.quarter
    [Return]    ${quarter}

Search Tax Filing Account 
    [Arguments]    ${taxaccount}    ${day}    ${filingPeriod}
    ${XPATH} =    list_xpath.obtain_xpath_by_filing_row_form    ${taxaccount}    ${day}    ${filingPeriod}
    Scroll Element Into View         ${XPATH}
    Wait Until Element Is Visible    ${XPATH}    ${TIME}
    Click Element                    ${XPATH}

Obtain Current Date
    ${date} =    Get Current Date    UTC
    ${date} =    list_xpath.obtain_date_correct_format_taxfilings    ${date}
    [Return]    ${date}

Modify Records per Page
    [Arguments]    ${records}
    Wait Until Element Is Visible    ${taxfilings_page_locators.page_select_select}    ${TIME}
    Select From List By Label        ${taxfilings_page_locators.page_select_select}    ${records}

Click On Download Button 
    Wait Until Element Is Visible    ${taxfilings_page_locators.download_button}    ${TIME}
    Click Element                    ${taxfilings_page_locators.download_button}