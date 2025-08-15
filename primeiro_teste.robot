*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Abrir navegador e acesso do organo 
    Open Browser    url=http://localhost:3000/    browser=Chrome

Preencher os campos do formulario 
    Input Text    id:form-nome      Akemi 
    Input Text    id:form-cargo     Desenvolvedora
    Input Text    id:form-imagem    https://picsum.photos/200/300
    Click Element    class:lista-suspensa
    clicl