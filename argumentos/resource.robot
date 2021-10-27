***Variables***
${nome_email}
${sobrenome_email}
${idade_email}
${prefixo_email}    @robot.com
${email_pronto}


***Keywords***
Dado que eu recebo o nome "${nome}" sobrenome "${sobrenome}" e a idade "${idade}"
    Set Test Variable  ${idade_email}            ${nome}
    Set Test Variable  ${sobrenome_email}        ${sobrenome}
    Set Test Variable  ${idade_email}            ${idade}

Quando monto o email 
    ${email}  Catenate  ${nome_email}_${sobrenome_email}_${idade_email}${prefixo_email}
    Set Test Variable   ${email_pronto}  ${email}  

Entao imprimo o meu novo email
    Log To Console  \n\n Bem vindo ao mundo robot, seu email e: ${email_pronto}