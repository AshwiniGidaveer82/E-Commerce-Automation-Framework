*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Get Users API
    Create Session    mysession    https://jsonplaceholder.typicode.com    verify=False

    ${response}=    GET On Session
    ...    mysession
    ...    /users/1

    Log To Console    ${response.status_code}

    Should Be Equal As Integers
    ...    ${response.status_code}
    ...    200

    Log To Console    API Test Passed