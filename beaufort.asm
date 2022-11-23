%include "../include/io.mac"

section .text
    global beaufort
    extern printf

; void beaufort(int len_plain, char *plain, int len_key, char *key, char tabula_recta[26][26], char *enc) ;
beaufort:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]  ; len_plain
    mov ebx, [ebp + 12] ; plain (address of first element in string)
    mov ecx, [ebp + 16] ; len_key
    mov edx, [ebp + 20] ; key (address of first element in matrix)
    mov edi, [ebp + 24] ; tabula_recta
    mov esi, [ebp + 28] ; enc
    ;; DO NOT MODIFY
    ;; TODO: Implement spiral encryption
    ;; FREESTYLE STARTS HERE


    ;;fac schimbul de valori intre ecx si eax
    mov edi,ecx
    mov ecx,eax
    mov eax,edi
 
label:
    ;; am mers pe varianta cu corelari logice intre linia si coloana matricii si continutul ei
    push edi
    push eax
    mov al,[ebx];;am pus in registru cate un byte al stringului in clar
    push ecx
    mov cl,[edx];; am pus in registru cate un byte al key
    cmp al,cl 
    jg mare
    jl mic
    je egal

    ;;daca valoarea din al este mai mare ,atunci fac diferenta intre cele 2 registe si o scad la 91 rezultand caracterul cerut
mare:
     sub eax,ecx
     mov edi,91
     sub edi,eax
     mov [esi],edi  ;;pun caracterul la adresa ceruta
     jmp peste_comparari

    ;;daca valoarea din al este mai mica ,atunci fac diferenta intre cele 2 registe si o adun la 65 rezultand caracterul cerut
mic:
    sub ecx,eax
    mov edi,65
    add edi,ecx
    mov [esi],edi   ;;pun caracterul la adresa ceruta
    jmp peste_comparari

    ;;daca sunt egale,rezulta caracterul A
 egal:
    mov edi,65
    mov [esi],edi
    jmp peste_comparari

 peste_comparari: 

    pop ecx
    pop eax
    dec eax ;;scad lungimea key ului 
    cmp eax,0
    pop edi
    je modifica
    jmp final

    ;;ma duc din nou la adresa de inceput a stringului 
modifica:
    add eax,edi
    sub edx,edi
    jmp final

 final: 
    ;cresc indicele pentru a lua adresa urmatoare a fiecarui string
    inc ebx
    inc esi
    inc edx
    loop label



    ;; FREESTYLE ENDS HERE
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY
