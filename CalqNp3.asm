.data
msg_aprovado: .asciiz "Aprovado"
msg_reprovado: .asciiz "Reprovado"
msg_np3_nao_satisfatoria: .asciiz "NP3 não satisfatória"
msg_nota_invalida: .asciiz "Nota inválida"

.text
main:
    # leitura das notas NP1, NP2 e NP3
    li $v0, 5   # código da syscall para ler inteiro do teclado
    la $a0, msg_nota_np1   # exibe mensagem para informar a nota NP1
    syscall
    move $t0, $v0   # armazena a nota NP1 em $t0
    
    li $v0, 5   # código da syscall para ler inteiro do teclado
    la $a0, msg_nota_np2   # exibe mensagem para informar a nota NP2
    syscall
    move $t1, $v0   # armazena a nota NP2 em $t1
    
    li $v0, 5   # código da syscall para ler inteiro do teclado
    la $a0, msg_nota_np3   # exibe mensagem para informar a nota NP3
    syscall
    move $t2, $v0   # armazena a nota NP3 em $t2
    
    # verifica se as notas são válidas (entre 0 e 100)
    li $t3, 0   # carrega o valor 0 em $t3
    blt $t0, $t3, nota_invalida   # verifica se a nota NP1 é menor que 0
    bgt $t0, 100, nota_invalida   # verifica se a nota NP1 é maior que 100
    blt $t1, $t3, nota_invalida   # verifica se a nota NP2 é menor que 0
    bgt $t1, 100, nota_invalida   # verifica se a nota NP2 é maior que 100
    blt $t2, $t3, nota_invalida   # verifica se a nota NP3 é menor que 0
    bgt $t2, 100, nota_invalida   # verifica se a nota NP3 é maior que 100
    
    # calcula a média das notas NP1, NP2 e NP3
    add $t4, $t0, $t1   # soma as notas NP1 e NP2 e armazena em $t4
    add $t4, $t4, $t2   # soma a nota NP3 em $t4
    div $t4, $t4, 3   # divide a soma das notas por 3 e armazena em $t4
    
    # verifica se a média é maior ou igual a 60
    li $t5, 60   # carrega o valor 60 em $t5
    bge $t4, $t5, aprovado   # salta para a seção "aprovado" se a média é maior ou igual a 60
    
    # verifica se a nota NP3 é menor que 30
    li $t6, 30   # carrega o valor 30 em $t6
    blt $t2, $t6, reprovado
