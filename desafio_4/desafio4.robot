***Settings***
Resource        ./resource.robot
Test Setup      abrir navegador chrome
#Test Teardown   fechar navegador


***Test Cases***
Caso de Teste 04: Adicionar Cliente
    Acessar a página home do site
    Clicar em sign in
    informar um maleski.sucessfull@email.com válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso