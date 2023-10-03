code segment
    assume cs:code,ds:code
    
    org 100h
    
    mov di,0 
    mov si,0
    mov ax,0
    mov bp,7 
    mov bx,0
    
    sum:
    mov cx,[arr+di]
    add ax,cx
    add di,2
    cmp di,14d
    jne sum
    je avg 
    
    avg: 
    mov dx,0
    div bp
    mov cx,ax
     
    varience: 
    mov ax,[arr+si] 
    sub ax,cx
    mul ax
    add bx,ax 
    add si,2
    cmp si,14d
    jne varience
    je final
    
    final:
    mov dx,0
    mov ax,bx
    div bp
    mov bx,ax
    mov ax,1
    mov cx,1
    
    stdav:
    mul ax 
    mov di,ax
    inc cx
    mov ax,cx
    cmp di,bx
    jl stdav
    
    sub cx,2
    hlt
    
    
    arr dw 6,9,14,10,5,8,11
    var dw ?
    
    code ends 
end

ret