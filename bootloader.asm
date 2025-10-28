BITS 16               
ORG 0x7C00         
start:

    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7C00     
    mov si, message
print_char:
    lodsb          
    or  al, al        
    jz  done_print
    mov ah, 0x0E       
    int 0x10
    jmp print_char

done_print:
    cli          
    hlt              


times 510-($-$$) db 0
dw 0xAA55
