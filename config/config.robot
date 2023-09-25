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
${GO_TO_URL}           ${BASE_URL}
${PAGE_TITLE}          //title[text()='Index']
${TIME_OUT}            15
@{NAVEGADORES}         Chrome    Firefox    Edge
${MIN_WIDTH}           1382
${MIN_HEIGHT}          744
${OUTPUTDIR}           ${EXECDIR}/results
${SCREENSHOT}          true
${FIRST_INDEX}         0

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
    Set Window Size                   ${MIN_WIDTH}    ${MIN_HEIGHT}
    Set Selenium Timeout              ${TIME_OUT}
    Set Selenium Page Load Timeout    30
    Location Should Be    about:blank

eu acesso a url '${url}'
    [Documentation]    Navego até a url
    Go To   ${url}
    Wait Until Element Is Enabled     ${PAGE_TITLE}

que eu estou na página automation testing pelo '${navegador}'
    [Documentation]    Navego até a url

    que eu tenho o navegador '${navegador}'
    eu acesso a url '${GO_TO_URL}'
