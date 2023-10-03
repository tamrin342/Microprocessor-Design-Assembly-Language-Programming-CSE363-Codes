      code segment
    assume cs:code,ds:code
    org 100h
    
    mov di,0
    mov bx,12d
    mov cx,7  
    
    func: 
    mov ax,[arr1+bx]
    mov [arr2+di],ax 
    dec cx
    add di,2
    sub bx,2
    cmp cx,0 
    je exit
    jne func  
    
    exit:
    hlt
    
    arr1 dw 4,7,14,9,5,2,4
    arr2 dw ?
    
    code ends
end