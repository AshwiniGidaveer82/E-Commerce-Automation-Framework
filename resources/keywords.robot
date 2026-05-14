*** Settings ***
Library    SeleniumLibrary
Variables    ../variables/testdata.py

*** Keywords ***
Launch Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login To Application
    Input Text    id:user-name    ${USERNAME}
    Input Password    id:password    ${PASSWORD}
    Click Button    id:login-button

Close Session
    Close Browser