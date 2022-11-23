%include "../include/io.mac"

section .text
    global is_square
    extern printf

is_square:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov ebx, [ebp + 8]      ; dist
    mov eax, [ebp + 12]     ; nr
    mov ecx, [ebp + 16]     ; sq
    ;; DO NOT MODIFY
   
    ;; Your code starts here
    mov edi,0
numar:
    push eax
    mov edx, 0
    mov esi,[ebx+4*edi] ;;iau in registru cate o distanta
   
test_pperfect:
    
    xor eax,eax
    push edx;;pun valoarea pe stiva
    mov eax,edx ;;pun in eax valoarea lui edx
    mul eax ;;inmultesc eax*eax
    pop edx;;scot valoarea de pe stiva
    inc edx ;;cresc edx 
    cmp eax,esi 
    jl test_pperfect
    je perfect
    jg neperfect

perfect:
    ;;pun 1 la adresa finala,fiind numar patrat perfect
    xor eax,eax
    mov eax,1
    mov [ecx+4*edi],eax
    jmp final

neperfect:
     ;;pun 0 la adresa finala,nefiind numar patrat perfect
    xor eax,eax
    mov eax,0
    mov [ecx+4*edi],eax
    jmp final

final:

    inc edi ;;cresc indicele adresei cerute 
    pop eax ;;scot valoarea lui eax de pe stiva,fiind acum lungimea vectorului
    cmp edi,eax
    jl numar

    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY