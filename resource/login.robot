*** Settings ***
Documentation    Arquivo de resources tela de login
Resource    ../config/config.robot
Library    SeleniumLibrary

*** Variables ***
...    Components tela de login
${TEXT_SCREEN_LOGIN}    //h1[@class='c-kStoDv'][contains(.,'Gerencie toda sua atividade comercial')]
${INPUT_EMAIL}    email-test-rep
${INPUT_PASSWORD}    senha-test-rep
${ENTRAR}    //span[contains(.,'Entrar')]
${TEXT_EMAIL}    //span[@role='label'][contains(.,'E-mail')]
${TEXT_PASSWORD}    //span[@role='label'][contains(.,'Senha')] 
${BUTTON_SUBMIT}     //button[@type='submit'][contains(.,'Próximo')]
${TEXT_BUTTON}    Próximo
${TEXT_HOME}    //h1[@class='c-hyKXie c-hyKXie-ibpdmLV-css'][contains(.,'Escolha uma organização para entrar')]
${ORGANIZATION}    //span[contains(.,'Testes Marina')]


*** Keywords ***

Acessar home de login repmais
    Abrir o navegador
    Go to    ${URL_HOST}
    Wait Until Element Is Visible    locator=${TEXT_SCREEN_LOGIN}

Validar components da tela de login
    Element Should Be Visible    locator=${TEXT_EMAIL}
    Element Should Be Visible    locator=${TEXT_PASSWORD}
    Element Should Be Visible    locator=${BUTTON_SUBMIT}
    Element Text Should Be    locator=${BUTTON_SUBMIT}    expected=${TEXT_BUTTON}    

Acessando sistema com o login da usuário
    Input Text    locator=${INPUT_EMAIL}    text=${LOGIN}
    Input Password    locator=${INPUT_PASSWORD}    password=${PASSWORD}
    Click Button    locator=${BUTTON_SUBMIT}

Valida acesso ao sistema após login
    Sleep    time_=2
    Element Should Be Visible    locator=${TEXT_HOME}
    Element Should Be Visible    locator=${ORGANIZATION}
        
        
    
        
    



