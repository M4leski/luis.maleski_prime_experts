***Settings***
Library    SeleniumLibrary


***Variables***
${url}          http://automationpractice.com/index.php
&{home}         sign=//a[@class='login'][contains(.,'Sign in')]
...             informar=//input[@id="email_create"]
...             e_mail=//button[@id='SubmitCreate']
...             first_name=//input[contains(@id,'customer_firstname')]
...             last_name=//input[@id='customer_lastname']
...             password=//input[@type='password']
...             address=//input[@id='address1']
...             city=//input[@id='city']
...             state=//div[contains(@id,'state')]
...             state_select=//option[contains(.,'New Jersey')]
...             postal_code=//input[@id='postcode']
...             mobile_phone=//input[@id='phone_mobile']
...             address_ref=//input[@id='alias']
...             finish=//button[@id='submitAccount']
...             sucessfull=//p[@class='info-account']

&{dados}        nome=luis
...             sobrenome=Antonio Maleski
...             senha=admin123
...             residencia=Av Anniballe Ferrarini
...             cidade=Campina Grande do sul
...             cep=83430
...             celular=04112345678
...             alternativo=addres@admin.com

***Keywords***
Acessar a página home do site
    Go To       ${url}

    
Clicar em sign in
    Wait Until Element Is Visible       ${home.sign}
    Click Element                       ${home.sign}


informar um ${email} válido
    Wait Until Element Is Visible       ${home.informar}
    Input Text                          ${home.informar}  ${email}


Clicar em "Create an account"
    Wait Until Element Is Visible       ${home.e_mail}
    Click Element                       ${home.e_mail}


Preencher os dados obrigatórios
    Wait Until Element Is Visible       ${home.first_name}
    Input Text                          ${home.first_name}       ${dados.nome}

    Wait Until Element Is Visible       ${home.last_name}
    Input Text                          ${home.last_name}        ${dados.sobrenome}

    Wait Until Element Is Visible       ${home.password}
    Input Text                          ${home.password}         ${dados.senha}

    Wait Until Element Is Visible       ${home.address}
    Input Text                          ${home.address}          ${dados.residencia}

    Wait Until Element Is Visible       ${home.city}
    Input Text                          ${home.city}             ${dados.cidade}

    Wait Until Element Is Visible       ${home.state}
    Click Element                       ${home.state}

    Wait Until Element Is Visible       ${home.state_select}
    Click Element                       ${home.state_select}

    Wait Until Element Is Visible       ${home.postal_code}
    Input Text                          ${home.postal_code}      ${dados.cep} 

    Wait Until Element Is Visible       ${home.mobile_phone}
    Input Text                          ${home.mobile_phone}     ${dados.celular}

    Wait Until Element Is Visible       ${home.address_ref}
    Input Text                          ${home.address_ref}      ${dados.alternativo}


Submeter cadastro
    Wait Until Element Is Visible       ${home.finish}
    Click Element                       ${home.finish}

Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible       ${home.sucessfull}


abrir navegador chrome
    Open Browser  browser=chrome