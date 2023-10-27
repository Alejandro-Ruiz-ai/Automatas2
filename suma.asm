Autor: Alejandro Ruiz Bedolla
viernes, 27 de octubre de 2023 12:41:39 p. m.
include 'emu8086.inc'
org 100h
MOV AX, 986
PUSH AX
POP AX
; Asignacion z
MOV z, AX
MOV AX, 986
PUSH AX
POP AX
PUSH AX
POP AX
; Asignacion z
MOV z, AX
print 'z es igual a: '
MOV AX, z
CALL print_num
MOV AX, z
PUSH AX
POP AX
MOV BX, 256
DIV BX
XOR AX, AX
MOV AX, DX
PUSH AX
POP AX
; Asignacion i
MOV i, AX
print ' i es igual a: '
MOV AX, i
CALL print_num
print ''
printn '' 
print 'Altura: '
call scan_num 
MOV altura, CX
print ''
printn '' 
print 'for:'
printn '' 
print ''
; For: 1
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
InicioFor1:
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinFor1
; For: 2
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
InicioFor2:
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
JAE FinFor2
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
JMP InicioFor2
FinFor2:
print ''
printn '' 
print ''
INC i
JMP InicioFor1
FinFor1:
; For: 3
; For: 4
; For: 5
; For: 6
; For: 7
print ''
printn '' 
print 'while:'
printn '' 
print ''
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
InicioWhile1:
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinWhile1
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
InicioWhile2:
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
JAE FinWhile2
; if: 22
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
JNE Eif22
print '-'
JMP Eelse22
Eif22:
; else: 23
print '+'
Eelse22:
INC j
JMP InicioWhile2
FinWhile2:
INC i
print ''
printn '' 
print ''
JMP InicioWhile1
FinWhile1:
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
; if: 43
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
JNE Eif43
print '-'
JMP Eelse43
Eif43:
; else: 44
print '+'
Eelse43:
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
z dw 0h
END
