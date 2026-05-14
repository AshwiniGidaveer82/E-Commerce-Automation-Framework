*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/common.robot

Suite Setup       Open Ecommerce Browser
Suite Teardown    Close Ecommerce Browser

*** Test Cases ***
Checkout Product
    Go To    https://www.saucedemo.com/

    Input Text    id:user-name    standard_user
    Input Password    id:password    secret_sauce
    Click Button    id:login-button

    Wait Until Element Is Visible    id:add-to-cart-sauce-labs-backpack    15s
    Click Button    id:add-to-cart-sauce-labs-backpack

    Wait Until Element Is Visible    class:shopping_cart_link    15s
    Click Element    class:shopping_cart_link

    Wait Until Page Contains    Your Cart    20s

    Click Button    id:checkout

    Wait Until Page Contains    Checkout: Your Information    20s

    Input Text    id:first-name    Ashwini
    Input Text    id:last-name     Gidaveer
    Input Text    id:postal-code   560067

    Click Button    id:continue

    Wait Until Page Contains    Checkout: Overview    20s

    Click Button    id:finish

    Wait Until Page Contains    Thank you for your order!    20s

    Log To Console    Checkout Completed Successfully