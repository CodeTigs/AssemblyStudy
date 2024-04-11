# Questão 2
.text
    lw $t3, 60($t1) # Carrega o valor do 15º elemento do array 'b' em $t3 (assumindo que $t1 é o endereço base de 'b' e cada elemento tem 4 bytes)
    sub $t0, $t3, $t2 # Subtrai 'c' de 'b[15]' e armazena o resultado em 'a'
    
    lw $t3, 20($t0) # Carrega o valor do 5º elemento do array 'a' em $t3
    lw $t4, 12($t2) # Carrega o valor do 3º elemento do array 'c' em $t4
    add $t1, $t3, $t4 # Adiciona 'a[5]' e 'c[3]' e armazena o resultado em 'b'
    
    lw $t3, 84($t0) # Carrega o valor do 21º elemento do array 'a' em $t3
    sub $t2, $t1, $t3 # Subtrai 'a[21]' de 'b' e armazena o resultado em 'c'
