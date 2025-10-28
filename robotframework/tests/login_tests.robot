*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/browser.resource
Resource   ../pages/LoginPage.robot
Resource   ../pages/HomePage.robot
Resource   ../resources/common_keywords.robot

Suite Setup     Open Browser To Home Page
Suite Teardown  Close Browser

*** Test Cases ***
User Can Log In Successfully
    Go To Login Page
    Input Username    DemoUser
    Input Password    password123
    Submit Credentials
    Verify Login Successful

User Can Log Out Successfully
    [Setup]    Open Home Page
    Go To Login Page
    Input Username    DemoUser
    Input Password    password123
    Submit Credentials
    Verify Login Successful
    Logout
    Verify Logout Successful
