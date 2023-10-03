      code segment
    assume cs:code,ds:code
    org 100h
    
    mov di,0
    mov cx,6  
    mov ax,[arr+0]
    
    func: 
    cmp cx,0
    je exit 
    add di,2
    dec cx
    cmp [arr+di],ax 
    jg large
    jng func  
    
    large:
    mov ax,[arr+di] 
    jmp func 
    
    exit:
    hlt
    
    arr dw 4,7,14,9,5,2,4
    
    code ends
end