code segment
    assume cs:code,ds:code
    org 100h
    
    mov di,0
    mov cx,8 
    sum:
    mov bx,[arr+di] 
    mov [arr2+di],bx
    add di,2 
    dec cx
    cmp cx,0
    jne sum
    
    hlt
    
    arr dw 1,2,2 dup(1,2,3)
    arr2 dw ?
    
    code ends
end