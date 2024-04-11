#faça um programa q identifique se o numero é maior, menor ou igual a zero 

.data 
	maior: .asciiz "num maior que 0"
	menor: .asciiz "num menor que 0"
	igual: .asciiz "num igual a 0"

.text 
#ler o num inteiro

	li $v0, 5
	syscall 

	move $t0, $v0

	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
		li $v0, 4
		la, $a0, menor
		syscall 
		j fim

	imprimeIgual:
		li $v0, 4
		la, $a0, igual
		syscall 
		j fim
	imprimeMaior:
		li $v0, 4
		la, $a0, maior
		syscall 
fim:
		li $v0, 10 
		syscall 
