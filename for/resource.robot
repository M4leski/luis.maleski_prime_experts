***Variables***
@{lista_pais}  Franca  Africa  Bolivia  Usa  Taliba

***Keywords***
contando de "${num_init}" ate "${num_final}"
    FOR  ${num}  IN range  ${num_init}  ${num_final}
        Log To Console  \n estou no numero  $num{} \n
    END


contando em que pais viajamos
    FOR  ${pais}  IN  @{lista_pais}
        Log To Console  \n ja viajamos por  ${pais} \n
    END
