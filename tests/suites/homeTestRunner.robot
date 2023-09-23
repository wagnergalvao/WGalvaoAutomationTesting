*** Settings ***
Documentation    Configurações globais para compartilhamento em todo projeto

Suite Setup       Limpa arquivos de teste

Resource    ${EXECDIR}/config/config.robot

*** Variables ***

${file_path}    ${EXECDIR}/tests/features

*** Keywords ***
Executar Testes BDD
    [Arguments]    ${feature_file}
    
    ${result} =    Run Process    robot    tests/features/${feature_file}
    Log    ${result.stdout}
    Should Not Contain    ${result.stderr}    ERROR

    Remove Files    ${EXECDIR}/*.log
    Remove Files    ${EXECDIR}/*.*ml

*** Test Cases ***

Run Keyword    Executar Testes BDD    homeFunctionalTest.robot