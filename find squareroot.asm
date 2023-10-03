org 100h

code segment
    assume cs:code ;ds:code
    
    mov ax,1d
    mov cx,1d
    
    sqrt:
    mul ax
    mov bx,ax
    inc cx
    mov ax,cx
    
    cmp bx,53
    jl sqrt
    
    dec ax
    dec ax
    
    hlt
    code ends
end