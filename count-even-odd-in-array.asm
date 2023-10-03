code segment
    assume cs:code,ds:code
    
    org 100h
    
    mov di,0
    mov cx,0
    mov si,2
    mov bx,0
    
    count:
    cmp di,14d
    je exit
    mov ax,[arr+di]
    mov dx,0
    div si
    add di,2
    cmp dx,0
    je even
    jne odd
    
    odd:
    inc bx
    jmp count
    
    even:
    inc cx
    jmp count
    
    exit:
    hlt
    
    
    arr dw 14,11,10,5,6,9,8