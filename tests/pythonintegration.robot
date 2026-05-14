*** Settings ***
Library    ../libraries/custom.py

*** Test Cases ***
Generate Email Test

    ${email}=    Generate Email    Ashwini

    Log To Console    ${email}