***Variables***
@{pessoa} nome=luis sobrenome=maleski idade=21 sexo=M cep=83430-000 dia=16

***Keywords***
Imprimir pessoa
    log To Console  \n\n Imprimindo pessoa: ${pessoa}\nfrutas
Criando meu dicionario
    Set To Dictionary  @{criando_pessoa}  {nome=luis, sobrenome=maleski, idade=21, sexo=M, cep=83430-000, dia=16}
    #set Test Variable  @{criando_pessoa}
imprimir dicionario
    log To Console  \n\n Imprimindo pessoa ${criando_pessoa}\n