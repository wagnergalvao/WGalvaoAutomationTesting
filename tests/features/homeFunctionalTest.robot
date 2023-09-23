*** Settings ***
Documentation    Testes funcionais da página home

Resource    ${EXECDIR}/tests/step_definitions/home.robot

Suite Setup       Limpa arquivos de teste

*** Test Cases ***

Abrir a página automation testing no navegador
    [Documentation]    Abrir a página automation testing nos navegadores @{NAVEGADORES}
    [Tags]    home_functional_test    abre_pagina_navegadores
    
    FOR    ${navegador}    IN    @{NAVEGADORES}
        Dado      que eu tenho o navegador '${navegador}'
        Quando    eu acesso a url '${BASE_URL}'
        Então     exibe a página home
    END
