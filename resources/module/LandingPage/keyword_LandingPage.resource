*** Settings ***
Library         SeleniumLibrary
Resource        objectmaps_LandingPage.resource

*** Keywords ***

Fill In Login Credentials
    [Arguments]        ${username}        ${password}
    Fill Username      ${username}
    Fill Password      ${password}

Fill Username
    [Arguments]        ${Username}
    Input Text         ${obj_username}    ${Username}

Fill Password
    [Arguments]        ${Password}
    Input Text         ${obj_password}    ${Password}

Click Login
     Click Button      ${obj_login_btn}

Login to Account
    [Arguments]                ${username}          ${password}
    Fill In Login Credentials  ${username}         ${password}
    Click Login
    Sleep  5 s

Navigate to Admin Page
     Click Element     ${AdminPage}
     Sleep  3 s

Click User Image
    Click Element  ${USER_IMAGE}

Click Logout
    Click Element  ${LOGOUT_BUTTON}

Logout Account
    Click User Image
    Click Logout