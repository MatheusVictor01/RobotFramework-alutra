*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}    http://localhost:3000/
${CAMPO_NOME}    Carlos Eduardo
${CAMPO_CARGO}    Desenvolver Front-End
${CAMPO_IMAGEM}    https://picsum.photos/200/300
${CAMPO_TIME}    Front-End
${BOTAO_CARD}     id:form-botao
${OPCAO_PROGRAMAÇÃO}    //option[contains(.,'Programação')]
${OPCAO_FRONT}    //option[contains(.,'Front-End')]
${OPCAO_DADOS}    //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}    //option[contains(.,'Devops')]
${OPCAO_UX}    //option[contains(.,'UX e Design')] 
${OPCAO_MOBILE}    //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}    //option[contains(.,'Inovação e Gestão')]

*** Test Cases ***
Verificar se ao preencher os campos do formulario corretamente os dados são inseridos e se um novo card é criado no time esperado
    Dado que eu acesse o orgqano
    E preencha os campos do formulário
    E clica no botão criar card
    Então identificar o card dentro do time esperado
    
*** Keywords ***
Dado que eu acesse o orgqano
    Open Browser    url=${URL}    browser=Chrome

E preencha os campos do formulário
    Input Text    ${CAMPO_NOME}       Carlos Eduardo 
    Input Text    ${CAMPO_CARGO}     Desenvolvedor Senior
    Input Text    ${CAMPO_IMAGEM}    https://picsum.photos/200/300
    Click Element    ${CAMPO_TIME}
    Click Element    ${OPCAO_FRONT}
E clica no botão criar card
    Click Element    ${BOTAO_CARD}
Então identificar o card dentro do time esperado
    Element Should Be Visible    class:colaborador