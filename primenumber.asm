org 100h
code segment 
    assume cs:code,ds:code 
 
  mov bx,4d
  
  cond1:
  mov ax,51d
  cmp ax,1
  je notprime
  mov dx,0
  div bx
  dec bx
  cmp dx,0
  je notprime
  jne cond2
  
  cond2:
  cmp bx,1
  je prime
  jne cond1
  
  prime:
  mov cx,1
  hlt
  
  notprime:
  mov cx,2d
  hlt
  
  code ends 
end