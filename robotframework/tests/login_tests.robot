*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.robot

Suite Setup     Open Browser To Login Page
Suite Teardown  Close Browser

*** Test Cases ***
User Can Log In Successfully
    Input Username    DemoUser
    Input Password    password123
    Submit Credentials
    Verify Login Successful

User Can Log Out Successfully
    [Setup]    Open Browser To Login Page
    Input Username    DemoUser
    Input Password    password123
    Submit Credentials
    Verify Login Successful
    Logout
    Verify Logout Successful
    [Teardown]    Close Browser