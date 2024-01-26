*** Settings ***
Library        SeleniumLibrary
Resource       ../PayGradesPage/objectmaps_PayGradesPage.resource

*** Keywords ***
Navigate to PayGradesPage
    Click Element        ${JobList_btn}
    Click Element        ${PayGradeList_item}
    Sleep  5s

Click Add Pay Grade Button
    Click Button         ${add_btn}

Fill in Name of Pay Grade
    Sleep  5s
    [Arguments]         ${PayGradeName_value}
    Input Text          ${PayGradeName_input}           ${PayGradeName_value}
    Click Button        ${PayGradeName_save_btn}

Click Add Currencies
    Sleep  5s
    Click Button        ${AddCurrencies_btn}

Fill in Currencies Detail
    Sleep  5s
    [Arguments]         ${NameofCurrencies}             ${MinSalary}           ${MaxSalary}
    Click Element       ${Currencies_dropdown}
    Click Element       ${NameofCurrencies}
    Input Text          ${MinSalary_input}              ${MinSalary}
    Input Text          ${MaxSalary_input}              ${MaxSalary}
    Sleep  5s
    Click Button        ${AddCurrencies_save_button}

Verify Save Salary Success
    Sleep  5s
    Page Should Contain    USD