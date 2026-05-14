*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=./screenshots

*** Keywords ***
Launch Browser
    Open Browser    https://www.saucedemo.com    chrome
    Maximize Browser Window

Close Session
    Close Browser

Capture Failure Screenshot
    Capture Page Screenshot