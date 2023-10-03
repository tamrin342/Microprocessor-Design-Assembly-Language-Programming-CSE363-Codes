code segment
    assume cs:code,ds:code
    org 100h
    
    mov di,0
    mov ax,0
    mov cx,1 
    sum:
    mov bx,[arr+di] 
    add ax,bx
    add di,2 
    inc cx
    cmp cx,21
    jne sum
    
    mov arr2,ax
    hlt
    
    arr dw 20 dup(1)
    arr2 dw ?
    
    code ends
end