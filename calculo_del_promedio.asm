.MODEL SMALL
.DATA
        array_numeros DB ?
        size_n  DB 0AH,0DH,'Cantidad de numeros: ','$'
        n_i  DB 0AH,0DH,'Numero: ','$'
        promedio_final  DB 0AH,0DH,'Promedio final: ','$'
.CODE
MAIN    PROC
        MOV AX,@DATA
        MOV DS,AX

        LEA DX,size_n
        MOV AH,09H
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30H

        MOV CL,AL
        MOV BL,AL
        MOV AL,00
        MOV array_numeros,AL

for_n:
        LEA DX,n_i
        MOV AH,09H
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30H

        ADD AL,array_numeros
        MOV array_numeros,AL
        LOOP for_n

calculoPromedio:

        LEA DX,promedio_final
        MOV AH,09H
        INT 21H

        MOV AX,00
        MOV AL,array_numeros
        DIV BL
        ADD AX,3030H
        MOV DX,AX
        MOV AH,02H
        INT 21H

        MOV AH,4CH
        INT 21H

MAIN    ENDP
        END     MAIN
                    
  
