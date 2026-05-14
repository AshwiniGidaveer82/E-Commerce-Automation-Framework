*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/common.robot

Suite Setup       Open Ecommerce Browser
Suite Teardown    Close Ecommerce Browser

*** Test Cases ***
Search Product
    Login To Ecommerce

    Wait Until Page Contains    Products    20s
    Page Should Contain    Sauce Labs Backpack

    Log To Console    Product page loaded successfully