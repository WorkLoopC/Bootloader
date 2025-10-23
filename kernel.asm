[BITS 16]
[ORG 0x1000]      

_start:
    mov ah, 0x0E    
    mov al, 'H'
    int 0x10
    mov al, 'i'
    int 0x10

hang:
    jmp hang
