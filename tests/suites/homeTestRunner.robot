*** Settings ***
Documentation    Configurações globais para compartilhamento em todo projeto

Resource    ${EXECDIR}/config/config.robot

*** Keywords ***
Executar Testes BDD
    [Arguments]    ${feature_file}
    
    ${result} =    Run Process    behave    ${feature_file}
    Log To Console    ${feature_file}
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log    ${result.stdout}
    Should Not Contain    ${result.stderr}    ERROR

*** Test Cases ***
Executar Testes BDD da página Home
    [Documentation]        Executa testes BDD da página Home
    [Tags]                 Home_Functional_Test
    Executar Testes BDD    ${EXECDIR}/tests/features/homeFunctionalTest.feature
