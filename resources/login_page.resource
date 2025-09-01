*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${LOGIN_EMAIL}          id=email-id
${LOGIN_PASSWORD}       id=password
${LOGIN_BTN}            id=submit-id
${LOGOUT_BTN}           xpath=//a[normalize-space()='Sign Out']


*** Keywords ***
Login To CRM
    [Arguments]    ${username}    ${password}
    Input Text    ${LOGIN_EMAIL}    ${username}
    Input Text    ${LOGIN_PASSWORD}    ${password}
    Click Button    ${LOGIN_BTN}
    Wait Until Page Contains Element    ${LOGOUT_BTN}
