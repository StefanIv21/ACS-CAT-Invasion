%include "../include/io.mac"

struc point
    .x: resw 1
    .y: resw 1
endstruc

section .text
    global points_distance
    extern printf

points_distance:
    ;; DO NOT MODIFY
    
    push ebp
    mov ebp, esp
    pusha

    mov ebx, [ebp + 8]      ; points
    mov eax, [ebp + 12]     ; distance
    ;; DO NOT MODIFY
   
    ;; Your code starts here
    xor ecx,ecx
    xor edx,edx
    ;;iau primele 2 x uri din structura pentru a le compara
    mov dl,[ebx + point_size * 0 + point.x] 
    mov cl, [ebx+ point_size * 1 + point.x] 
    cmp dl,cl
    jg mare
    je egal
    jl mic

    ;;fac scaderea si pun in adresa unde trebuie scrisa distanta dintre puncte
mare:
    sub dl,cl
    mov [eax],edx
    jmp final

mic:
    sub cl,dl
    mov [eax],ecx
    jmp final

    ;;daca x -urile sunt egale,iau primele 2 y uri si fac scaderea
egal:
    mov dl,[ebx + point_size * 0 + point.y] 
    mov cl, [ebx+ point_size * 1 + point.y] 
    cmp dl,cl
    jg mare
    jl mic


final:
    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret

    ;; DO NOT MODIFY