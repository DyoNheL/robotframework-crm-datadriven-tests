*** Settings ***
Library     SeleniumLibrary
Library     ../lib/WebDriverLibrary.py
Resource    login_page.resource


*** Variables ***
${BASE_URL}     https://automationplayground.com/crm


*** Keywords ***
Open CRM
    Open Chrome Browser    ${BASE_URL}/login.html
    Maximize Browser Window
    Login To CRM    admin@automationplayground.com    admin

Close CRM
    Close Browser
