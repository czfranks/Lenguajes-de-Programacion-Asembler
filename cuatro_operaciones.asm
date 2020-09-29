.model small
.stack 64
.data
   
   ;variables
   num_a db 0
   num_b db 0
   Suma  db 0
   Resta db 0
   Multi db 0
   Divis db 0
   
   ;mensajes
   Ingrese_a db 13,10,'numero a: ', 13,10,'$'
   Ingrese_b db 13,10,'numero b: ', 13,10,'$'
   
   msmSuma  db 13,10,'a + b: $'
   msmResta db 13,10,'a - b: $'
   msmMulti db 13,10,'a * b: $'
   msmDivis db 13,10,'a / b: $'

.code
    start:
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, Ingrese_a
        int 21h
        mov ah, 1
        int 21h
        sub al, 30h
        mov num_a, al
   
        mov ah, 9
        lea dx, Ingrese_b
        int 21h
        mov ah, 1
        int 21h
        sub al, 30h  
        mov num_b, al
        
    ;Suma  +
    mov al, num_a
    add al, num_b
    mov Suma, al
    
    ;Resta  -
    mov al, num_a
    sub al, num_b
    mov Resta, al
    
    ;Multiplicacion * 
    mov al, num_a
    mul num_b
    mov Multi, al
    
    ;Division /
    mov al, num_a
    div num_b
    mov Divis, al
    
    
    ;mensaje de salida
    mov ah, 9
    lea dx, msmSuma
    int 21h
    mov dl, Suma
    add dl, 30h
    mov ah, 2
    int 21h
    
    mov ah, 9
    lea dx, msmResta
    int 21h
    mov dl, Resta
    add dl, 30h
    mov ah, 2
    int 21h
    
    mov ah, 9
    lea dx, msmMulti
    int 21h
    mov dl, Multi
    add dl, 30h
    mov ah, 2
    int 21h
    
    mov ah, 9
    lea dx, msmDivis
    int 21h
    mov dl, Divis
    add dl, 30h
    mov ah, 2
    int 21h      
    
    .exit
    
ret
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        
        
        
        
