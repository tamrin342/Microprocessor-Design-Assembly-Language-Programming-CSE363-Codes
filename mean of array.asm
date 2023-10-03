      code segment
    assume cs:code,ds:code
    org 100h
    
    mov di,0  
    mov cx,0
    mov ax,0
     
    func: 
    mov bx,[arr+di]
    add ax,bx 
    inc cx
    add di,2
    cmp cx,9
    je mean 
    jne func
    
    mean:
    div cx 
    hlt
    
    arr dw 1,2,3,4,5,6,7,8,9
    
    code ends
end