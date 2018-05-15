# 2018-05-15 12:49:29
# 注意：Logisim-evolution版本addiu,addu,subu,ori,beq,j,lw,sw等指令；
# 但不支持add和sub指令。对于本实验来说无影响，因为我们不会处理异常。
loop:
addiu $t5,$zero,9
addiu $t6,$zero,9
addu $t7,$t5,$t6
subu $t8,$t5,$t6    #以上测试了addu,addiu,subu指令
addiu $s0,$zero,0   #将地址为最开始的基址放入$s0
addiu $t1,$zero,10
addiu $t2,$zero,0
addiu $t3,$zero,100
ori $t2,$t2,1       #测试ori指令
beq $zero,$zero,condition  #测试beq指令
addiu $t5,$zero,0
j ocondition
condition:
sw $t2,0($s0)    #测试sw指令
lw $t3,0($s0)    #测试lw指令
ocondition:
addiu $t4,$zero,9
subu $t1,$t1,$t4
sw $t1,4($s0)
lw $t4,4($s0)
j loop            #测试Jump指令，之后会一直循环执行

