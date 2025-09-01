*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${EMAIL_LOCATOR}            id=EmailAddress
${FIRST_NAME_LOCATOR}       id=FirstName
${LAST_NAME_LOCATOR}        id=LastName
${CITY_LOCATOR}             id=City
${STATE_LOCATOR}            id=StateOrRegion
${MALE_LOCATOR}             xpath=//input[@value='male']
${FEMALE_LOCATOR}           xpath=//input[@value='female']
${PROMOTIONS_LOCATOR}       xpath=//input[@name='promos-name']
${SUBMIT_BTN}               xpath=//button[normalize-space()='Submit']
${CONFIRM_MSG}              xpath=//nav[@class='navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0']
${ERROR_MSG}                css=.error


*** Keywords ***
Fill Customer Form
    [Arguments]    ${email}    ${first_name}    ${last_name}    ${city}    ${state}    ${gender}    ${promotions}
    Input Text    ${EMAIL_LOCATOR}    ${email}
    Input Text    ${FIRST_NAME_LOCATOR}    ${first_name}
    Input Text    ${LAST_NAME_LOCATOR}    ${last_name}
    Input Text    ${CITY_LOCATOR}    ${city}
    Select From List By Value    ${STATE_LOCATOR}    ${state}

    IF    '${gender}' == 'Male'
        Click Element    ${MALE_LOCATOR}
    ELSE
        Click Element    ${FEMALE_LOCATOR}
    END

    IF    '${promotions}' == 'Yes'    Click Element    ${PROMOTIONS_LOCATOR}

Submit Forms
    Click Button    ${SUBMIT_BTN}

Validate Customer Added
    Wait Until Element Is Visible    ${CONFIRM_MSG}
    Page Should Contain Element    ${CONFIRM_MSG}

Validate Required Field
    [Arguments]    ${locator}
    Element Attribute Value Should Be    ${locator}    required    true
