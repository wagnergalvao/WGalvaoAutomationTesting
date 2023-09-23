*** Settings ***
Documentation    Configurações globais para compartilhamento em todo projeto

Resource    ${EXECDIR}/config/config.robot

*** Variables ***

${file_path}    ${EXECDIR}/tests/features

*** Keywords ***
Executar Testes BDD
    [Arguments]    ${feature_file}
    
    ${result} =    Run Process    robot    tests/features/${feature_file}
    Log    ${result.stdout}
    Should Not Contain    ${result.stderr}    ERROR

*** Test Cases ***
Executar Testes BDD da página Home
    [Documentation]        Executa testes BDD da página Home
    [Tags]                 Home_Functional_Test
    Executar Testes BDD    homeFunctionalTest.robot