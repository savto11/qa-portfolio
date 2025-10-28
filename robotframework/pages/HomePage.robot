*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/browser.resource

*** Variables ***
${LOGOUT_LINK}        id=logout
${LOGIN_LINk}         id=login
${WELCOME_LOGIN}      xpath=//h2[contains(text(), "Tervetuloa kirjautumaan!")]

*** Keywords ***
Open Home Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Go To Login Page
    Click Link    ${LOGIN_LINk}
    Page Should Contain Element    ${WELCOME_LOGIN}

Logout
    Wait Until Element Is Visible    ${LOGOUT_LINK}    5s
    Click Link    ${LOGOUT_LINK}

Verify Logout Successful
    Page Should Contain Element    ${LOGIN_LINk}
