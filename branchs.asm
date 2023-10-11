main:
#1 2
li $t0,1 #a
li $t1,2 #b
li $t2, 10 #c
beq $t0, $t1, igual
j diferente
igual:
	add $t2, $t0, $t1 # c = a + b
	sub $t0, $t1, $t2 # a = b - c
diferente:
	add $t2, $t0, $t2
	sub $t2, $t1, $t0 

#3
li $t0,1 #a
li $t1,2 #b
li $t2, 10 #c
bgt $t0, $t1, igual
j diferente
igual:
	sub $t2, $t0, $t1 # c = a + b
	add $t0, $t1, $t2 # a = b - c
diferente:
	sub $t2, $t0, $t2
	add $t2, $t1, $t0 

#4
li $t0,1 #a
li $t1,2 #b
li $t2, 10 #c
blq $t0, $t1, igual
j diferente
igual:
	add $t2, $t0, $t1 # c = a + b
	sub $t0, $t1, $t2 # a = b - c
diferente:
	add $t2, $t0, $t2
	sub $t2, $t1, $t0 