main:
    # Inicialize o registrador $t0 com 0
    li $t0, 10
    li $t1, 0

loop:
    # Verifique se $t0 é menor que 10
    bge $t0, 10, exit
    addi $t1, $t1, 5

    # Incrementar $t0
    subi $t0, $t0, 2

    # Volte para o início do loop
    j loop

exit:
