code segment
    assume cs:code,ds:code
    
    org 100h
    
    mov bx,[arr]
    mov di,0
    mov si,[arr] 
    mov bp,0
    
    func1:  
    cmp di,14d
    je func2
    mov cx,[arr+di] 
    add di,2
    cmp cx,bx
    jg large
    jng func1
    
    large:
    mov bx,cx
    jmp func1 
    
    func2:
    cmp bp,14d
    je exit
    mov cx,[arr+bp] 
    add bp,2
    cmp cx,si
    jl small
    jnl func2 
    
    small:
    mov si,cx
    jmp func2
    
    exit: 
    mov ax,si
    hlt
    
     
    arr dw 9,11,10,5,6,14,8  
    
    code ends
end

ret