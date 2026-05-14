*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.saucedemo.com/
${BROWSER}    chrome

*** Keywords ***
Open Ecommerce Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    20s

Close Ecommerce Browser
    Close Browser

Login To Ecommerce
    Input Text       id:user-name       standard_user
    Input Password   id:password        secret_sauce
    Click Button     id:login-button
    Wait Until Page Contains Element    class:shopping_cart_link    20s