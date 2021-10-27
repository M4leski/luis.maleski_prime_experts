* Test Cases *
Cenario: entendendo como o robot funciona por linha de comando
    [Tags]  chamando_robot
    Log To Console   \nOla pessoal da turma

Cenario: rodando mais de um teste
    Log To Console  \n Executei mais de um teste galera 

Cenario: recebendo um valor pelo terminal
    [Tags] recebendo_valor
    Log To Console  \n \n Ola $(valor_do_terminal) !!!! \n