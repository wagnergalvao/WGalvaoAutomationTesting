*** Settings ***
Documentation    Keywords da página automation testing

Resource    ${EXECDIR}/config/config.robot

*** Variables ***
${sign_in_button}         //button[@id='btn1' and text()='Sign In']
${skip_sign_in_button}    //button[@id='btn2' and text()='Skip Sign In']
${logo_img}               //img[@id='logo' and @src='original.png']
${email_input}            //input[@id='email' and @placeholder='Email id for Sign Up']
${enter_img}               //img[@id='enterimg' and @src='enter.png']

*** Keywords ***

exibe a página home
    [Documentation]    Exibe, valida, evidencia os elementos da página e fecha o browser

    Wait Until Element Is Enabled    ${sign_in_button}
    Wait Until Element Is Enabled    ${skip_sign_in_button}
    Wait Until Element Is Enabled    ${logo_img}
    Wait Until Element Is Visible    ${email_input}
    Wait Until Element Is Enabled    ${enter_img}

    evidencia página
    fecha navegadores