*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}     id=id_username
${PASSWORD_FIELD}     id=id_password
${LOGIN_BUTTON}       id=submit
${WELCOME_TEXT}       xpath=//span[contains(text(), "Hei, DemoUser")]

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Submit Credentials
    Click Button    ${LOGIN_BUTTON}

Verify Login Successful
    Page Should Contain Element    ${WELCOME_TEXT}
