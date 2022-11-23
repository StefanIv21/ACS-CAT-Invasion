%include "../include/io.mac"

section .text
    global spiral
    extern printf

; void spiral(int N, char *plain, int key[N][N], char *enc_string);
spiral:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]  ; N (size of key line)
    mov ebx, [ebp + 12] ; plain (address of first element in string)
    mov ecx, [ebp + 16] ; key (address of first element in matrix)
    mov edx, [ebp + 20] ; enc_string (address of first element in string)
    ;; DO NOT MODIFY
    ;; TODO: Implement spiral encryption
    ;; FREESTYLE STARTS HERE

    mov edi,0
    mov esi,eax ;;pun in registru  lungimea la o latura a matricei 
    mul al ;;inmultesc al rezultand numarul de elemente ale matricei
    push esi;;o pun pe striva pentru a o retine
prima_linie:
    ;;pun in stringul cerut carcaterele de la stringul in clar adunate cu elementele de pe prima linie a matricei
    push edx
    xor edx,edx
    mov dl,[ecx+4*edi]
    add [ebx],edx
    pop edx
    push eax
    xor eax,eax
    mov eax,[ebx]
    mov [edx],eax
    pop eax
    inc edx ;;adun indicele stringului cerut
    inc ebx ;;adun indicele stringului in clar

    dec eax ;;scad cate un element
    inc edi ;;cresc edi ul care este indicele matricei
    cmp eax,0 ;;daca nu mai am elemente in matrice ma opresc
    je final
    dec esi ;;scad esi ul  care este un indice la elementele de pe linia curenta
    cmp esi,0
    jg prima_linie

    pop esi
    dec edi ;;scad indicele matricei
    dec esi ;; scad lungimea unei lini
    push esi

ultina_coloana:
     ;;pun in stringul cerut carcaterele de la stringul in clar adunate cu elementele de pe ultima coloana a matricei
    dec eax ;;scad cate un element
    add edi,[ebp + 8];;cresc la indicele matricei lungimea liniei initiala
    push edx
    xor edx,edx
    mov dl,[ecx+4*edi]
    add [ebx],edx
    pop edx
    push eax
    xor eax,eax
    mov eax,[ebx]
    mov [edx],eax
    pop eax
    inc edx;;adun indicele stringului cerut
    inc ebx;;adun indicele stringului in clar

    dec esi ;;scad esi ul  care este un indice la elementele de pe coloana curenta
    cmp esi,0
    jg ultina_coloana

    pop esi
    cmp eax,0
    push esi
    je final ;;daca nu mai am elemente in matrice ma opresc
    pop esi
    push esi
   
ultima_linie:
     ;;pun in stringul cerut carcaterele de la stringul in clar adunate cu elementele de pe ultima linie a matricei
    dec eax  ;;scad cate un element
    dec edi ;;scad indicele matricei
    push edx
    xor edx,edx
    mov dl,[ecx+4*edi] 
    add [ebx],edx
    pop edx
    push eax
    xor eax,eax
    mov eax,[ebx]
    mov [edx],eax
    pop eax
    inc edx;;adun indicele stringului cerut
    inc ebx;;adun indicele stringului in clar

    dec esi ;;scad esi ul  care este un indice la elementele de pe linia curenta
    cmp esi,0
    jg ultima_linie

    pop esi
    cmp eax,0
    push esi
    je final ;;daca nu mai am elemente in matrice ma opresc
    pop esi
    push esi

    dec esi ;; scad lungimea unei lini

prima_coloana:
     ;;pun in stringul cerut carcaterele de la stringul in clar adunate cu elementele de pe prima coloana a matricei
    dec eax ;;scad cate un element
    sub edi,[ebp + 8]  ;;scad la indicele matricei lungimea liniei initiala
    push edx
    xor edx,edx
    mov dl,[ecx+4*edi]
    add [ebx],edx
    pop edx
    push eax
    xor eax,eax
    mov eax,[ebx]
    mov [edx],eax
    pop eax
    inc edx;;adun indicele stringului cerut
    inc ebx;;adun indicele stringului in clar

    dec esi ;;scad esi ul  care este un indice la elementele de pe coloana curenta
    cmp esi,0
    jg prima_coloana

    pop esi 
    inc edi  ;;cresc indicele matricei
    sub esi,1 ;; scad lungimea unei lini
    push esi  ;;o pun pe striva pentru a o retine
    jmp prima_linie

final:

   pop esi

    ;; FREESTYLE ENDS HERE
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY
