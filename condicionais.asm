#EX: Escreva um prog q lÊ
#um numero inteiro em imprime se ele é par
# ou se ele eh impar

.data
msg: .asciiz "digite um numero:"
par: .asciiz "Par"
impar: .asciiz "impar"

.text
#imprimindo mensagem para o usuario
li $v0, 4
la $a0, msg
syscall 

#lendo um numero inteiro
li $v0, 5
syscall 

li $t0, 2
div $v0, $t0

mfhi $t1 #possui o resto da divisão por 2

beq $t1, 0, imprimePar
li $v0, 4
la $a0, impar

#encerrar o programa
li $v0, 10
syscall 

imprimePar:
li $v0, 4
la $a0, par
syscall 



