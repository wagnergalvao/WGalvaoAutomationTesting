*** Settings ***
Documentation    Keywords da página automation testing

Resource    ${EXECDIR}/config/config.robot

*** Keywords ***
que eu tenho o navegador
    [Arguments]    ${browser}
    [Documentation]    Configura o navegador de automação com base no argumento fornecido
    Run Keyword If    '${browser}' == ${EMPTY}    ${browser} set variable ${BROWSER}
    Open Browser    ${BASE_URL}    ${browser}
    Set Window Size    ${screen_width}    ${screen_height}
