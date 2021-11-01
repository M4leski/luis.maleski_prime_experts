***Settings***
Library    SeleniumLibrary


***Variables***
${url}          http://automationpractice.com/index.php
&{Home}         women=//a[contains(@title,'Women')]
...             summer_dresses=//a[contains(@title,'Summer Dresses')]
&{produtos}     summer=//span[@class='category-name'][contains(.,'Summer Dresses')]    


***Keywords***
Acessar a página home do site
    Go To   ${url}


Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Wait Until Element Is Visible       ${home.women}
    Scroll Element Into View            ${home.women}


Clicar na sub categoria "Summer Dresses"
    Wait Until Element Is Visible       ${home.summer_dresses}
    Click Element                       ${home.summer_dresses}


Conferir se os produtos da sub-categoria "summer Dresses foram mostrados na pagina"
     Wait Until Element Is Visible      ${produtos.summer}


abrir navegador chrome
    Open Browser  browser=chrome