%include "../include/io.mac"

struc point
    .x: resw 1
    .y: resw 1
endstruc

section .text
    global road
    extern printf

road:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]      ; points
    mov ecx, [ebp + 12]     ; len
    mov ebx, [ebp + 16]     ; distances
    ;; DO NOT MODIFY
   
    ;; Your code starts here
    xor edx,edx
    mov esi,ecx
    mov edi,0

 inceput:
    ;;iau x urile la cate 2 puncte si le compar
    mov dl,[eax + point_size * edi + point.x] 
    mov cl,[eax+ point_size * (edi+1) + point.x] 
    cmp dl,cl
    jg mare
    je egal
    jl mic

    ;;fac scaderea si rezultatul il pun la adresa dorita
mare:
   
    sub dl,cl
    mov [ebx+4*edi],edx
    jmp final
   
mic:

    sub cl,dl
    mov [ebx+4*edi],ecx
    jmp final

    ;;daca x urile sunt egale compar y urile lor
egal:

    mov dl,[eax + point_size * edi + point.y] 
    mov cl, [eax+ point_size * (edi+1) + point.y] 
    cmp dl,cl
    jg mare
    jl mic
    je egal2

    ;;daca si y sunt egale atunci valoarea este 0
egal2:

    mov [ebx+4*edi],byte 0
    jmp final

final:

    inc edi ;;cresc indexul la adresa ceruta
    dec esi ;;scad  numarul de puncte
    cmp esi,1
    jg inceput

    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY