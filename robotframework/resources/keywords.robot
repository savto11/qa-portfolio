*** Settings ***
Library    SeleniumLibrary
Resource   locators.robot
Resource   ../variables/global_variables.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Submit Credentials
    Click Button    ${SUBMIT_BUTTON}

Verify Login Successful
    Page Should Contain Element    ${WELCOME_TEXT}

Logout
    Wait Until Element Is Visible    ${LOGOUT_LINK}    5s
    Click Link    ${LOGOUT_LINK}

Verify Logout Successful
    Page Should Contain Element    ${LOGIN_LINK}
