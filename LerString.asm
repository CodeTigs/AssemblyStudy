#não sei pq mas ta dando errado
.data 
pergunta: .asciiz "Qual é seu nome?"
saudação: .asciiz "Olá, "
nome: .space 25
.text
#impressao pergunta 
li $v0, 4
la $a0, pergunta
syscall 

#leitura do nome 
li $v0, 8
la $a0, nome 
la $a1, 25
syscall 

#mostra saudação 
li $v0, 4
la $a0, saudação
syscall 

#impressão do nome
li $v0, 4
la $a0, nome
syscall 
