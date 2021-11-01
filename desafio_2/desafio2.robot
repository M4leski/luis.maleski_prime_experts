***Settings***
Resource        ./resource.robot
Test Setup      abrir navegador chrome
#Test Teardown   fechar navegador


***Test Cases***
Caso de Teste 02: Pesquisar produto Não existente 
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search "itemNãoExistente"
