*** Settings ***
Library       SeleniumLibrary
Resource      ../AddUserPage/objectmaps_AddUserPage.resource

*** Keywords ***
Click Add User Button
    Click Button     ${add_btn}
    Sleep  3s

Verify Add User
    [Arguments]  ${username}
    Page Should Contain        Adalwin
    Page Should Contain        ${username}      

Select Input From Dropdown
    [Arguments]      ${dropdown_name}  ${dropdown_item}
    Click Element    ${dropdown_name}
    Click Element    ${dropdown_item}

Input Employee Name
    Input Text    css:[placeholder='Type for hints...']        Odis
    Sleep  3s
    Click Element  xpath://*[contains(text(),'Adalwin')]

Input username
    [Arguments]  ${field}  ${value}
    Input Text    ${username_input}  ${value}

Input password
    [Arguments]  ${field}  ${value}
    Input Text    ${password_input}  ${value}

Retype Password
    [Arguments]  ${field}  ${value}
    Input Text    ${confirmPassword_input}  ${value}

Click Submit Button
    Click Button    ${submit_btn}

Search username
    [Arguments]  ${field}  ${username}  ${button}
    Input Text  ${field}  ${username}
    Click Button  ${button}
    sleep  5s