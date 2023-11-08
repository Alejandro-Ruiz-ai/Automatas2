Autor: Alejandro Ruiz Bedolla
martes, 7 de noviembre de 2023 06:18:09 p. m.
include 'emu8086.inc'
org 100h
MOV AX, 258
PUSH AX
XOR AX, AX
POP AX
; Asignacion a
MOV a, AX
print ''
printn '' 
print 'a: '
MOV AX, a
CALL print_num
MOV AX, a
PUSH AX
XOR AX, AX
POP AX
MOV BX, 256
DIV BX
XOR AX, AX
MOV AX, DX
XOR DX, DX
PUSH AX
POP AX
; Asignacion a
MOV a, AX
print ''
printn '' 
print 'a: '
MOV AX, a
CALL print_num
MOV AX, 8
PUSH AX
XOR AX, AX
POP AX
MOV BX, a
ADD AX, BX
MOV a, AX
print ''
printn '' 
print 'a: '
MOV AX, a
CALL print_num
MOV AX, 10
PUSH AX
XOR AX, AX
MOV BX, a
POP AX
MUL BX
MOV a, AX
print ''
printn '' 
print 'a: '
MOV AX, a
CALL print_num
MOV AX, 100
PUSH AX
XOR AX, AX
MOV AX, a
POP BX
DIV BX
MOV a, AX
print ''
printn '' 
print 'Valor Casteado de a: '
MOV AX, a
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
XOR AX, AX
POP AX
; Asignacion i
MOV i, AX
InicioFor1:
MOV AX, i
PUSH AX
XOR AX, AX
MOV AX, altura
PUSH AX
XOR AX, AX
POP BX
POP AX
CMP AX, BX
JA FinFor1
; For: 2
MOV AX, 250
PUSH AX
XOR AX, AX
POP AX
; Asignacion j
MOV j, AX
InicioFor2:
MOV AX, j
PUSH AX
XOR AX, AX
MOV AX, 250
PUSH AX
XOR AX, AX
MOV AX, i
PUSH AX
XOR AX, AX
POP BX
POP AX
ADD AX, BX
PUSH AX
XOR AX, AX
POP BX
POP AX
CMP AX, BX
JAE FinFor2
; if: 1
MOV AX, j
PUSH AX
XOR AX, AX
MOV AX, 2
PUSH AX
XOR AX, AX
POP BX
POP AX
DIV  BX
PUSH DX
XOR DX, DX
MOV AX, 0
PUSH AX
XOR AX, AX
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
print ''
printn '' 
print 'while:'
printn '' 
print ''
MOV AX, 1
PUSH AX
XOR AX, AX
POP AX
; Asignacion i
MOV i, AX
InicioWhile1:
MOV AX, i
PUSH AX
XOR AX, AX
MOV AX, altura
PUSH AX
XOR AX, AX
POP BX
POP AX
CMP AX, BX
JA FinWhile1
MOV AX, 250
PUSH AX
XOR AX, AX
POP AX
; Asignacion j
MOV j, AX
InicioWhile2:
MOV AX, j
PUSH AX
XOR AX, AX
MOV AX, 250
PUSH AX
XOR AX, AX
MOV AX, i
PUSH AX
XOR AX, AX
POP BX
POP AX
ADD AX, BX
PUSH AX
XOR AX, AX
POP BX
POP AX
CMP AX, BX
JAE FinWhile2
; if: 4
MOV AX, j
PUSH AX
XOR AX, AX
MOV AX, 2
PUSH AX
XOR AX, AX
POP BX
POP AX
DIV  BX
PUSH DX
XOR DX, DX
MOV AX, 0
PUSH AX
XOR AX, AX
POP BX
POP AX
CMP AX, BX
JNE Eif4
print '-'
JMP Eelse4
Eif4:
; else: 5
print '+'
Eelse4:
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
XOR AX, AX
POP AX
; Asignacion i
MOV i, AX
InicioDoWhile1:
MOV AX, 250
PUSH AX
XOR AX, AX
POP AX
; Asignacion j
MOV j, AX
InicioDoWhile2:
; if: 7
MOV AX, j
PUSH AX
XOR AX, AX
MOV AX, 2
PUSH AX
XOR AX, AX
POP BX
POP AX
DIV  BX
PUSH DX
XOR DX, DX
MOV AX, 0
PUSH AX
XOR AX, AX
POP BX
POP AX
CMP AX, BX
JNE Eif7
print '-'
JMP Eelse7
Eif7:
; else: 8
print '+'
Eelse7:
INC j
MOV AX, j
PUSH AX
XOR AX, AX
MOV AX, 250
PUSH AX
XOR AX, AX
MOV AX, i
PUSH AX
XOR AX, AX
POP BX
POP AX
ADD AX, BX
PUSH AX
XOR AX, AX
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
XOR AX, AX
MOV AX, altura
PUSH AX
XOR AX, AX
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

