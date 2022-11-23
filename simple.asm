%include "../include/io.mac"

section .text
    global simple
    extern printf

simple:
    ;; DO NOT MODIFY
    push    ebp
    mov     ebp, esp
    pusha

    mov     ecx, [ebp + 8]  ; len
    mov     esi, [ebp + 12] ; plain
    mov     edi, [ebp + 16] ; enc_string
    mov     edx, [ebp + 20] ; step

    ;; DO NOT MODIFY
   
    ;; Your code starts here
label:
    mov bl, byte [esi+ecx-1] ;; iau din plain caracterele in ordine inversa pentru a functiona comanda loop
    mov al,bl ;; pun in alt registru valoarea unui caracter
    add al,dl ;;adaug valoarea lui step
    mov bl,90;; pun in registru valoarea 90,care este  caracterul  Z ,pentru a compara daca se depaseste valoarea
    cmp al,bl 
    jg dupa
pune:
    mov [edi+ecx-1],al  ;;pun in enc_string valorile extrase adunate cu step-ul dat
loop label
jmp final
dupa:
    div bl ;;impart la bl pentru a lua restul impartirii
    mov bl,64   ;;pun in registru primul caracter ,A
    add bl,ah  ;; adun in registru restul impartii 
    xor eax,eax
    mov al,bl 
    jmp pune

 final:
    ;; Your code ends here
    
    ;; DO NOT MODIFY

    popa
    leave
    ret
    
    ;; DO NOT MODIFY

    
