# Questão 3
.data
    a: .word 4, 5 # Define um array de palavras com os valores 4 e 5
    
.text
    la $s0, a # Carrega o endereço de 'a' em $s0
    li $t1, 0 # Inicializa $t1 com 0
    
    lw $t2, 0($s0) # Carrega o valor no endereço $s0 em $t2
    li $t3, 5 # Carrega o valor 5 em $t3
    blt $t2, $t3, IF # Se o valor no endereço $s0 for menor que 5, pula para 'IF'
    
    ELSE: 
    lw $t2, 4($s0) # Carrega o valor no endereço $s0+4 em $t2
    add $t1, $t1, $t2 # Adiciona o valor no endereço $s0+4 e $t1, e armazena o resultado em $t1
    j Exit # Pula para 'Exit'
    
    IF: 
    add $t2, $t1, 2 # Adiciona o valor em $t1 e 2, e armazena o resultado em $t2
    sw $t2, 0($s0) # Armazena o valor de $t2 no endereço $s0

    Exit: # Rótulo de saída
