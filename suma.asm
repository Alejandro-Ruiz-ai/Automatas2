Autor: Alejandro Ruiz Bedolla
lunes, 23 de octubre de 2023 12:34:01 a. m.
include 'emu8086.inc'
org 100h
print ''
printn '' 
print 'Altura: '
call scan_num 
MOV altura, CX
print ''
printn '' 
print 'do:'
printn '' 
print ''
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
InicioDoWhile1:
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
InicioDoWhile2:
; if: 1
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH DX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif1
print '-'
JMP Eelse1
Eif1:
; else: 2
print '+'
Eelse1:
INC j
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinDoWhile2
JMP InicioDoWhile2
FinDoWhile2:
INC i
print ''
printn '' 
print ''
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinDoWhile1
JMP InicioDoWhile1
FinDoWhile1:
int 20h
RET
define_scan_num
define_print_num
define_print_num_uns
; V a r i a b l e s
altura dw 0h
i dw 0h
j dw 0h
k dw 0h
a dw 0h
END
