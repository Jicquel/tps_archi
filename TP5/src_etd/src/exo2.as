xor r0,r0       #on met 0 dans r0
xor r2,r2       #on met 0 dans r2 
li 1,r3         #on met 1 dans r3

attente:
 ld 0x0010, r0  #on charge la valeur du timer dans r0
 and r0,r0      #MAJ du flags z
 jz fonction    #si r0 and r0 = 0 on jmp à fonction 
 jmp attente 

fonction:
 add r3,r2      #r2 := r2 + r3
 st r2, 0x0001  #on stocke la valeur de r2 dans les LEDs
 jmp attente
