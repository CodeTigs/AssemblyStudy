.data 

saudação: .asciiz "ola, qual sua idade: "
saida: .asciiz "sua idade é: "

.text

li $v0, 4 #imprimir uma string
la $a0, saudação
syscall

li $v0, 5 #leitura de inteiros
syscall

move $t0, $v0 #valor fornecido esta em t$0

li $v0, 4 #imprimir um string 
la $a0, saida
syscall 

li $v0, 1 
move $a0, $t0
syscall