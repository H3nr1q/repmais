*** Settings ***

Documentation    Suite de teste de login repmais

Resource    ../resource/login.robot

Library   SeleniumLibrary

*** Test Cases ***

Caso de Teste 1 - Acesso ao sistema rep mais
    [Documentation]    Esse teste irá abrir o sistema repmais e realizar login de uma conta
    [Tags]    menus
    Acessar home de login repmais
    Validar components da tela de login
    Acessando sistema com o login da usuário
    Valida acesso ao sistema após login
