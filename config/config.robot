*** Settings ***
Documentation   Configuration File

Library     SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL_HOST}       URL_HOST
${LOGIN}          LOGIN
${PASSWORD}       PASSWORD

*** Keywords ***
Abrir o navegador    
    Open Browser    browser=${BROWSER}
    Maximize Browser Window   

Fechar o navegador
    Capture Page Screenshot
    Close Browser 