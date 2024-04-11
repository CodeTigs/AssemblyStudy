.text 

li $t0, 32 
li $t1, 5

div $t0, $t1 #realiz divisão inteira t0/t1
             #a parte inteira vai para  o reg lo
             #o resto vai para o reg hi
             
             
mflo $s0     #move o conteúdo de lo para s0
mfhi $s1     #move o conteúdo de hi para s1

