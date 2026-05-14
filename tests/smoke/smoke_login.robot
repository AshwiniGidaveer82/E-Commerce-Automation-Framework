*** Settings ***
Library    SeleniumLibrary
Resource   ../../resources/common.robot

Suite Setup       Open Ecommerce Browser
Suite Teardown    Close Ecommerce Browser

*** Test Cases ***
Valid Login Smoke Test
    Login To Ecommerce
    Page Should Contain Element    class:shopping_cart_link

    Log To Console    Smoke Test Passed