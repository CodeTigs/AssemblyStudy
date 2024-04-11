.data 
#area para dados na memria  principal
msg : .asciiz "ola mundo" #mensagem a ser exibida para usuario

.text
li $v0, 4 #instrução para impressão
la $a0, msg #indicar o endereço em que está a mensagem


syscall #imprima