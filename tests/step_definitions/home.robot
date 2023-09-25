*** Settings ***
Documentation    Keywords da página automation testing

Resource    ${EXECDIR}/config/config.robot

*** Variables ***
${sign_in_button}         //button[@id='btn1' and text()='Sign In']
${skip_sign_in_button}    //button[@id='btn2' and text()='Skip Sign In']
${logo_img}               //img[@id='logo' and @src='original.png']
${email_input}            //input[@id='email' and @placeholder='Email id for Sign Up']
${enter_img}              //img[@id='enterimg' and @src='enter.png']
@{page_titles}            SignIn    Register    Register
@{button_names}           Sign In    Skip Sign In    Enter
@{button_xpaths}          ${sign_in_button}    ${skip_sign_in_button}    ${enter_img}
@{button_uris}            /SignIn.html    /Register.html    /Register.html

*** Keywords ***

exibe a pagina home
    [Documentation]    Exibe, valida, evidencia os elementos da página e fecha o browser

    Wait Until Element Is Enabled    ${sign_in_button}
    Wait Until Element Is Enabled    ${skip_sign_in_button}
    Wait Until Element Is Enabled    ${logo_img}
    Wait Until Element Is Visible    ${email_input}
    Wait Until Element Is Enabled    ${enter_img}

    Run Keyword If    '${SCREENSHOT}' == 'true'    Capture Page Screenshot

eu acesso a pagina '${title}' pelo botão '${name}'
    [Documentation]    Clica no elemento que direciona para a url da página
    Wait Until Element Is Enabled    ${button_xpaths}[${FIRST_INDEX}]
    Click Button                     ${button_xpaths}[${FIRST_INDEX}]

vai para a url '${GO_TO_URL}'
    [Documentation]    Navega até a URL da página e valida o título

    Go To               ${GO_TO_URL}
    ${actual_url}=      Get Location
    Should Be Equal     ${actual_url}      ${GO_TO_URL}

    Run Keyword If    '${SCREENSHOT}' == 'true'    Capture Page Screenshot
