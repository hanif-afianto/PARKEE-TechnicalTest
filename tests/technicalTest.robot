*** Settings ***
Library         SeleniumLibrary
Library         ../resources/lib/utils.py
Resource        ../resources/common/keyword_common.resource
Resource        ../resources/module/LandingPage/keyword_LandingPage.resource
Resource        ../resources/module/AddUserPage/keyword_AddUserPage.resource
Resource        ../resources/module/PayGradesPage/keyword_PayGradesPage.resource
Test Setup      keyword_common.Begin Web Test
Test Teardown   keyword_common.End Web Test

*** Test Cases ***
technicalTest
    #Add new User with Admin Role and Status Enabled on Admin menu
    Navigate to Landing Page
    Login to Account                        ${UserName}             ${Password}
    Navigate to Admin Page
    Click Add User Button
    Select Input From Dropdown              ${role_dropdown}        ${admin_role}
    Select Input From Dropdown              ${status_dropdown}      ${enable_status}
    Input Employee Name
    ${NewUser} =                            Generate Username
    ${NewPassword} =                        Generate Password
    Input username                          ${username_input}       ${NewUser}
    Input password                          ${password_input}       ${NewPassword}
    Retype Password                         ${password_input}       ${NewPassword}
    Click Submit Button
    sleep  7s
    Search username                         ${username_search}      ${NewUser}              ${search_btn}
    Verify AddUser                          ${NewUser}
    Logout Account
    
    #Add new Pay Grades with USD currency
    Login to Account                        ${NewUser}              ${NewPassword}
    Navigate to Admin Page
    Navigate to PayGradesPage
    Click Add Pay Grade Button
    Fill in Name of Pay Grade               ${NewUser}
    Click Add Currencies
    Fill in Currencies Detail               ${USD_Currency}         10000                   20000
    Sleep  7s
    Verify Save Salary Success