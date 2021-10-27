***Keywords***
Criar email
    [Arguments]  ${nome}  ${sobrenome}  ${idade}
    ${email}  Catenate  ${nome}_${sobrenome}_+${idade}@robot.com

    [return]  ${email}
***Test Cases***
Cenario: teste criacao de email
    ${test} Criar email luis antonio 21
    Log To Console  \n\n  imprimindo email:\n ${test}