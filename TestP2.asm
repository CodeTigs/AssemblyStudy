.data
    initial_address: .word 0
.text
    la $t0, initial_address   # Carrega o endereço inicial no registrador $t0
    addi $t0, $t0, 4          # Adiciona 4 ao endereço inicial
    li $t1, 120               # Carrega o número 120 no registrador $t1
    li $t2, 155               # Carrega o número 155 no registrador $t2
    and $t3, $t1, $t2         # Aplica a operação lógica "E" nos números 120 e 155 e armazena o resultado no registrador $t3
    sw $t3, 0($t0)            # Armazena o valor do registrador $t3 no endereço de memória deslocado de 4 posições do endereço inicial
