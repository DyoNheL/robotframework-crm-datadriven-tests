*** Settings ***
Library             DataDriver    file=../data/customer_negative_data.xlsx
Resource            ../resources/common.resource
Resource            ../resources/add_customer_page.resource

Suite Setup         Open CRM
Suite Teardown      Close CRM
Test Template       Add Customer Negative Test


*** Test Cases ***
Add Customer Negative ${id}    [Tags]    negative
    ${email}    ${first_name}    ${last_name}    ${city}    ${state}    ${gender}    ${promotions}    expecting ${expected}


*** Keywords ***
Add Customer Negative Test
    [Arguments]
    ...    ${id}
    ...    ${email}
    ...    ${first_name}
    ...    ${last_name}
    ...    ${city}
    ...    ${state}
    ...    ${gender}
    ...    ${promotions}
    ...    ${expected}
    Go To    ${BASE_URL}/add-customer.html
    Fill Customer Form
    ...    ${email}
    ...    ${first_name}
    ...    ${last_name}
    ...    ${city}
    ...    ${state}
    ...    ${gender}
    ...    ${promotions}
    Submit Forms
    IF    '${expected}' == 'requiredEmail'
        Validate Required Field    id=EmailAddress
    END
    IF    '${expected}' == 'requiredName'
        Validate Required Field    id=FirstName
    END
    IF    '${expected}' == 'invalidEmail'
        Validate Invalid Email    id=EmailAddress
    END
