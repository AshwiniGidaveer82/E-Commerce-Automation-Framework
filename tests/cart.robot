*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/common.robot

Suite Setup       Open Ecommerce Browser
Suite Teardown    Close Ecommerce Browser

*** Test Cases ***
Add Product To Cart
    Go To    https://www.saucedemo.com/

    Input Text       id:user-name       standard_user
    Input Password   id:password        secret_sauce
    Click Button     id:login-button

    Wait Until Element Is Visible    id:add-to-cart-sauce-labs-backpack    20s
    Click Button    id:add-to-cart-sauce-labs-backpack

    Wait Until Element Is Visible    class:shopping_cart_link    20s
    Click Element    class:shopping_cart_link

    Wait Until Page Contains    Your Cart    20s

    Page Should Contain Element    class:cart_item

    Log To Console    Product Added Successfully