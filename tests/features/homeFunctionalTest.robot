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
        Então     exibe a pagina home    
    END
    Close All Browsers

Navegar para as páginas dos botões '@{button_names}'
    [Documentation]    Abrir a página pelos botões @{button_names}
    [Tags]    home_functional_test    abre_pagina_elementos

    FOR    ${navegador}    IN    @{NAVEGADORES}
        ${FIRST_INDEX}     Set Variable    0
        FOR    ${name}    IN    @{button_names}
            ${GO_TO_URL}       Set Variable    ${BASE_URL}${button_uris}[${FIRST_INDEX}]
    
            Dado      que eu estou na página automation testing pelo '${navegador}'
            Quando    eu acesso a pagina '${page_titles}[${FIRST_INDEX}]' pelo botão '${button_names}[${FIRST_INDEX}]'
            Então     vai para a url '${GO_TO_URL}'

            ${FIRST_INDEX}=    Evaluate    ${FIRST_INDEX} + 1
        END    
        Close All Browsers
    END
