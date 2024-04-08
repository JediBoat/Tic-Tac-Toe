.data
howtoplay1: .string "Welcome to a very bad version of Tick Tack Toe. The game is very simple. Player 1 is X and Player 2 is O\n"
howtoplay2: .string "To place your symbol on a table you have to enter in a number from 1 to 9 which represent a square on the grid \n"
grid1: .string "  1 | 2 | 3 \n"
grid2: .string "  4 | 5 | 6 \n"
grid3: .string "  7 | 8 | 9 \n"
howtoplay3: .string "Now you know how to play lets begin \n"

playingmsg1: .string "Player 1 where do you want to place an x \n"
playingmsg2: .string "Player 2 where do you want to place an 0 \n"

winmsg1: .string "Player 1 wins!!! \n"
winmsg2: .string "Player 2 wins!!! \n"

.align 2
arrfor12: .word 
arrforxo: .word 
.text
# loading immediate vaules
addi s1, s1, 1
addi s2, s2, 2
addi s3, s3, 3
addi s4, s4, 4
addi s5, s5, 5
addi s6, s6, 6
addi s7, s7, 7
addi s8, s8, 8
addi s9, s9, 9

addi s10, s10, 1
addi s11, s11, 2

#loading in immediate vaules of x an o
addi t2, zero, ' '
addi t3, zero, 'X'
addi t4, zero, 'O'

#loading the arrays into  registers
la t5, arrfor12#for 1 for x 2 for 0
la t6, arrforxo#displays characther x and o

sw t2, 0(t6)
sw t2, 4(t6)
sw t2, 8(t6)
sw t2, 12(t6)
sw t2, 16(t6)
sw t2, 20(t6)
sw t2, 24(t6)
sw t2, 28(t6)
sw t2, 32(t6)

#under here is the main code

addi a7, zero, 4 #Displays message on line 1
la a0, howtoplay1
ecall

addi a7, zero, 4 #Displays message on line 2
la a0, howtoplay2
ecall

addi a7, zero, 4 #Displays message on line 3
la a0, grid1
ecall

addi a7, zero, 4 #Displays message on line 4
la a0, grid2
ecall

addi a7, zero, 4 #Displays message on line 5
la a0, grid3
ecall

addi a7, zero, 4 #Displays message on line 6
la a0, howtoplay3
ecall

jal playerturn



playerturn: # subroutine for asking players where they want to but their symbols

addi a7, zero, 4 #Displays message on line 12
la a0, playingmsg1
ecall


addi a7, zero, 10 # ends program
ecall



playxtopleft:

playxtopmiddle:

playxtopright:
sw s10, 8(t5)
sw t3, 8(t6)
ret


playxmiddleleft:
ret

playxmiddle:
ret

playxmiddleright:
ret


playxbottemleft:
ret

playxbottemmiddle:
ret

playxbottemright:
ret



