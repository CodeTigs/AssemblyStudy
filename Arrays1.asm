# Questão 1
.data
    numArrays: .word 10 , 245, 0 # Define um array de palavras com os valores 10, 245 e 0
    
.text
    la $s0, numArrays # Carrega o endereço de 'numeros' em $s0
    lw $t0, 0($s0) # Carrega a primeira palavra de 'numeros' em $t0
    lw $t1, 4($s0) # Carrega a segunda palavra de 'numeros' em $t1
    lw $t2, 8($s0) # Carrega a terceira palavra de 'numeros' em $t2
    
    sub $t0, $t1, $t2 # Subtrai $t2 de $t1 e armazena o resultado em $t0
    add $t1, $t0, $t2 # Adiciona $t0 e $t2 e armazena o resultado em $t1
    sub $t2, $t1, $t0 # Subtrai $t0 de $t1 e armazena o resultado em $t2

    
