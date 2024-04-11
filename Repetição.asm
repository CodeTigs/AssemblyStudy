#Ex cod em C
#int i == 0
#while(i<10){
#      i++ 
#}
# print('%d', &i)

.text 
     move $t0, $zero #$t0 sera o iterador i
     
     while:
     	   beq $t0, 10, saida
     	   addi $t0, $t0, 1
     	   j while
    saida:
    	 #imprimeo valor de i
    	 li $v0, 1
    	 move $a0, $t0
    	 syscall 
