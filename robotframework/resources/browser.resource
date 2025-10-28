*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=${EXECDIR}/pictures

*** Variables ***
${BROWSER}     chrome
${URL}         http://127.0.0.1:8000/shop

*** Keywords ***
Open Browser To Home Page
    Set Screenshot Directory    ${EXECDIR}/pictures
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
