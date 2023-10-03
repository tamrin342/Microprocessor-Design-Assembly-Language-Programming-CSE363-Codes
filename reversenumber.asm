org 100h
code segment 
    assume cs:code,ds:code 
    
    mov ax,456d
    mov bx,10d
    mov di,100d
    mov bp,0
    
    reverse:
    mov dx,0
    div bx
    mov cx,ax
    mov ax,dx
    mul di
    mov si,ax
    add bp,si
    mov ax,di
    div bx 
    mov di,ax
    mov ax,cx
    
    cmp ax,0
    jne reverse 
    
    hlt
  
  code ends 
end