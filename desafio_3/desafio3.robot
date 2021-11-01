***Settings***
Resource        ./resource.robot
Test Setup      abrir navegador chrome
#Test Teardown   fechar navegador


***Test Cases***
Caso de Teste 03: Listar Produtos
    Acessar a página home do site
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na sub categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "summer Dresses foram mostrados na pagina"