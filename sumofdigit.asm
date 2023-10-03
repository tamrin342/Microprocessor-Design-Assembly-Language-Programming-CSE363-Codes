org 100h
code segment 
    assume cs:code,ds:code 
    
    mov ax,562d
    mov bx,10d
    mov cx,0
    
    sum:
    mov dx,0
    div bx
    add cx,dx
    cmp ax,0
    jne sum 
    
    hlt
  
  code ends 
end