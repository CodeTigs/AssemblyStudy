#multiplicar nums por potencia 2  usamos a op shift left 
#se movermos os bits de um num bi  uma casa para a esquerda multiplicaremos por 2
#se movermos os bits de um num bi duas casas para a esquerda multplicaremos por 4
#sendo assim se movermos os bits de  um num bi n casas para a esquerda multiplicamos por 2^n

#Ex
#000110 2 = 6 10    SHIFT LEFT 1
#001100 2 = 12 10   SHIFT LEFT 1
#011000 2 = 24 10   SHIFT LEFT 1
#110000 2 = 48 10   SHIFT LEFT 1

#Conclusão 6 shift left 3 será = 48

.text 
li $t0, 12
addi $t1, $zero, 10 

sll $s1, $t1, 10 #mult por 2 ^ 10 = 1024

li $v0, 1 #info da aba de syscalls 
move $a0, $s0
Syscall      