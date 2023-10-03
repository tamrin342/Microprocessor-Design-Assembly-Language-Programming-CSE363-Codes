org 100h

code segment
    assume cs:code:ds:code
    
    mov ax,2019d 
    mov bx,400d
    
    div bx 
    
    cmp dx,0
    je func1
    jne func3
    
    cmp dx,0
    je func2
    jne func3
 
    func1:
    mov cx,1d
    hlt  
    
    func2:
    mov cx,2d
    hlt
    
    func3:
    mov dx,0
    mov ax,2019d 
    mov bx,100d
    div bx
    cmp dx,0
    je func2
    jne func4 
    
    func4:
    mov dx,0
    mov ax,2019d
    mov bx,4d
    div bx
    cmp dx,0
    je func1
    jne func2
      
    
    code ends
end