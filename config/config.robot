*** Settings ***
Documentation    Configurações globais para compartilhamento em todo projeto

Library           SeleniumLibrary
Library           RequestsLibrary
Library           OperatingSystem
Library           Collections
Library           Process

*** Variables ***
${BROWSER}             Chrome
${BASE_URL}            https://demo.automationtesting.in
${SCREEN_WIDTH}        Get Screen Width
${SCREEN_HEIGHT}       Get Screen Height

*** Keywords ***

Dado ${keyword}
    Run Keyword    ${keyword}

Quando ${keyword}
    Run Keyword    ${keyword}

Então ${keyword}
    Run Keyword    ${keyword}

E ${keyword}
    Run Keyword    ${keyword}

Mas ${keyword}
    Run Keyword    ${keyword}
