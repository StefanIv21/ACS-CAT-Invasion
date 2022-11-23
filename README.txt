Simple.asm
		-pun in  "al" cate un caracter extras din stringul "plain" adunat cu valoarea step ului
		pun in registrul  "bl" valoarea 90,fiind maximul pe care un caracter ar trebui sa il ia
		-fac comparatia intre al si bl
		-daca "al" este mai mic pun valoarea lui la adresa ceruta
		-daca  al este mai mare,impart prin bl
		-adaug restul impartirii la valoarea 65 ,rezultand caracterul dorit
		-pun valoarea caracterului la adresa ceruta

Points-distance.asm
		-iau in 2 registre primele 2 x uri din structura ,pentru a le compara
		-daca sunt diferite,fac scadera in functie de numarul mai mare si pun rezultatul la adresa ceruta
		-daca nu ,iau in aceleasi 2 registre primele 2 y uri si le fac scaderea in functie de numarul mai mare,rezultatul fiind pus la adresa ceruta
		
Road.asm
		-iau in 2 registre x ul  la cate 2 puncte  din structura ,pentru a le compara
		-daca sunt diferite,fac scadera in functie de numarul mai mare si pun rezultatul la adresa ceruta
		-daca x sunt egale pun in cele 2 registre y urile lor si le compar	
		-daca sunt diferite,fac scadera in functie de numarul mai mare si pun rezultatul la adresa ceruta
		-daca sunt egale,rezultatul este 0 si il pun la adresa dorita
		-cresc indexul de la adresa ceruta
		-scad numarul de puncte si il compar cu 1
		-daca este mai mare ,ma intorc la inceput si reiua toti pasii descrisi mai sus
		-daca nu,ma opresc

Is_square.asm
		-iau intr un registru cate o distanta
		-pun in edx valoarea 0
		-ii dau push pe stiva pentru a ii retine valoarea
		-ii pun valoarea in eax si fac mul eax pentru a face inmultirea eax*eax
		-scot edx de pe stiva si il adun cu 1
		-cat timp eax este mai mic decat distanta luata,fac din  nou ultimi 3 pasi descrisi mai sus(dau push,inmultesc ,pop si inc)
		daca este egal cu distanta,inseamna ca este p perfect (pun la adresa ceruta valoarea 1)
		-daca nu este egal ,inseamna ca nu este p perfect(pun 0 la adresa ceruta)
		cresc indicele adresei cerute
		-cat timp indicele este mai mic decat lungimea vectorului,reiau toti pasii descrisi mai sus

 
beaufort.asm
		- am mers pe varianta cu corelari logice intre linia si coloana matricii si continutul ei
		-am pus in registrul "al"  cate un byte al stringului in clar
		-am pus in registrul "cl" cate un byte al key ului
 		-fac comparatie intre ele
		-daca valoarea din al este mai mare ,atunci fac diferenta intre cele 2 registe si o scad la 91 rezultand caracterul cerut
		-pun caracterul la adresa ceruta
		-daca valoarea din al este mai mica ,atunci fac diferenta intre cele 2 registe si o adun la 65 rezultand caracterul cerut
		-pun caracterul la adresa ceruta
		-daca sunt egale,rezulta caracterul A
		-scad lungimea key ului
		-daca este egal cu 0 ,  ma duc din nou la adresa de inceput a stringului key
		-cresc indicele pentru a lua adresa urmatoare a fiecarui string
		-reiau pasii cat timp ajung la ultimul caracter al textului in clar

Spiral.asm
		-pun in registrul esi lungimea de la o latura a matricei 
		-pun esi ul pe stiva pentru a retine adresa
		-inmultesc 'al' rezultand numarul de elemente ale matricei
		-pun in stringul cerut carcaterele de la stringul in clar adunate cu elementele de pe prima linie a matricei (pornesc de la adresa de baza
a matricei si cresc cu 4*indice_matrice ;scad cate 1 la esi de fiecare data cand adaug un element;reiau pasii descrisi pana cand esi ajunge la 0)
(cresc de fiecare data indicele matricei)
		-scad din eax cate 1 de fiecare data cand pun un element
		-daca eax ajunge la 0 ,inseamna ca nu mai am elemente in matrice si ma opresc
		-scot esi ul de pe stiva
		-scad esi  cu 1
		-pun valoarea lui esi pe stiva pentru a o retine

		-pun in stringul cerut carcaterele de la stringul in clar adunate cu elementele de pe ultima coloana a matricei(la indicele matricei adun 
cu lungimea initiala a unei laturi a matricei)(scad cate 1 la  esi de fiecare data cand adaug un element;reiau pasii descrisi pana cand  esi
ajunge la 0)(cresc de fiecare data indicele matricei)
		-scad din eax cate 1 de fiecare data cand pun un element
		-daca eax ajunge la 0 ,inseamna ca nu mai am elemente in matrice si ma opresc
		-dau pop la esi si push pentru a reia valoatea dorita

		- pun in stringul cerut carcaterele de la stringul in clar adunate cu elementele de pe prima coloana a matricei(la indicele matricei scad cu 1)
		-scad cate 1 la  esi de fiecare data cand adaug un element;reiau pasii descrisi pana cand  esi ajunge la 0(cresc de fiecare data indicele matricei)
		-scad din eax cate 1 de fiecare data cand pun un element
		-daca eax ajunge la 0 ,inseamna ca nu mai am elemente in matrice si ma opresc
		-dau pop la esi si push pentru a reia valoatea dorita
		 
		-pun in stringul cerut carcaterele de la stringul in clar adunate cu elementele de pe prima coloana a matricei(la indicele matricei scad 
cu lungimea initiala a unei laturi a matricei)(scad cate 1 la  esi de fiecare data cand adaug un element;reiau pasii descrisi pana cand  esi
ajunge la 0)(cresc de fiecare data indicele matricei)
		--scad din eax cate 1 de fiecare data cand pun un element
		-daca eax ajunge la 0 ,inseamna ca nu mai am elemente in matrice si ma opresc
		-dau pop la esi
		-cresc indicele matricei
		-scad esi cu 1
		-dau push la esi pentru a retine valoarea
		-reiau toti pasii de la inceput
	
	

		
