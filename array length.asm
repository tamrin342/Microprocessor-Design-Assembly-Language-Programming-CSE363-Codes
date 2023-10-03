      code segment
    assume cs:code,ds:code
    org 100h
    
    mov di,0  
    mov cx,0
     
    func: 
    mov bx,[arr+di]
    cmp bx,0
    je exit 
    jne length
    
    length:
    inc cx
    add di,2
    jmp func
    
    exit:
    hlt
    
    arr dw 4,7,14,9,5,2,4,5,9,7,0
    
    code ends
end