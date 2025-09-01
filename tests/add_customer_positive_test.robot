*** Settings ***
Library             DataDriver    file=../data/customer_positive_data.xlsx
Resource            ../resources/common.resource
Resource            ../resources/add_customer_page.resource

Suite Setup         Open CRM
Suite Teardown      Close CRM
Test Template       Add Customer Test


*** Test Cases ***
Add Customer ${id}    [Tags]    positive
    ${email}    ${first_name}    ${last_name}    ${city}    ${state}    ${gender}    ${promotions}


*** Keywords ***
Add Customer Test
    [Arguments]
    ...    ${id}
    ...    ${email}
    ...    ${first_name}
    ...    ${last_name}
    ...    ${city}
    ...    ${state}
    ...    ${gender}
    ...    ${promotions}
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
    Validate Customer Added
