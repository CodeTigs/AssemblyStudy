.data 
numero1: .asciiz "entre com o primeiro numero"
numero2: .asciiz "entre com o segundo numero"
teste1: .asciiz "sao iguais"
teste2: .asciiz "O primeiro numero eh maior"
teste3: .asciiz "O primeiro numero eh menor"

.text 
li $v0, 4
la $a0, numero1
syscall 

li $v0, 5
syscall 
add $t0, $v0, $zero

li $v0, 4
la $a0, numero2
syscall 

li $v0, 5
add $t1, $v0, $zero
syscall 

beq $t0, $t1,igual
blt $t0, $t1,menor
bgt $t0, $t1,maior

igual:
	li $v0,4
	la $a0, teste1
	syscall 
	j fim
menor:
	li $v0, 4
	la $a0, teste3
	syscall 
	j fim
maior:
	li $v0, 4
	la $a0, teste2
	syscall 	
fim:
