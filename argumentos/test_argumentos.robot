***Settings***
Resource  ./resource.robot

***Test Cases***
Cenario: criando email por argumentos embutidos
    Dado que eu recebo o nome "luis" sobrenome "maleski" e a idade "21"
    Quando monto o email
    Entao imprimo o meu novo email

#Cenario: criando email por argumentos
