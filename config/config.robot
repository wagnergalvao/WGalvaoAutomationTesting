*** Settings ***
Documentation    Configurações globais para compartilhamento em todo projeto

Library           Collections
Library           OperatingSystem
Library           Process
Library           RequestsLibrary
Library           SeleniumLibrary

*** Variables ***
${BROWSER}             Chrome
${BASE_URL}            https://demo.automationtesting.in
${PAGE_TITLE}          //title[text()='Index']
${TIME_OUT}            15
@{NAVEGADORES}         Chrome    Firefox    Edge
${min_width}           1382
${min_height}          744
${OUTPUTDIR}           ${EXECDIR}/results

*** Keywords ***

Dado
    [Arguments]    ${keyword}
    Run Keyword    ${keyword}

Quando
    [Arguments]    ${keyword}
    Run Keyword    ${keyword}

Então
    [Arguments]    ${keyword}
    Run Keyword    ${keyword}

E
    [Arguments]    ${keyword}
    Run Keyword    ${keyword}

Mas
    [Arguments]    ${keyword}
    Run Keyword    ${keyword}

Limpa arquivos de teste
    [Documentation]    Apaga os arquivos do último teste executado
    Set Screenshot Directory    ${OUTPUTDIR}
    Remove Files  ${OUTPUTDIR}/*.jp*g
    Remove Files  ${OUTPUTDIR}/*.png
    Remove Files  ${OUTPUTDIR}/*.log

que eu tenho o navegador '${browser}'
    [Documentation]    Configura o navegador de automação com base no argumento fornecido

    Open Browser                      about:blank    ${browser}
    Set Window Size                   ${min_width}    ${min_height}
    Set Selenium Timeout              ${TIME_OUT}
    Set Selenium Page Load Timeout    30

eu acesso a url '${url}'
    [Documentation]    Navego até a url
    Go To   ${url}
    Wait Until Element Is Enabled     ${PAGE_TITLE}

evidencia página
    [Documentation]    Gera evidência de página
    Capture Page Screenshot

evidencia elemento
    [Arguments]        ${element}
    [Documentation]    Gera evidência do elemento da página
    Capture Element Screenshot    ${element}

fecha navegador
    [Documentation]    Fecha o navegador aberto
    Close Browser

fecha navegadores
    [Documentation]    Fecha todos navegadores abertos
    Close All Browsers
