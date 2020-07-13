.model tiny
.code
.startup

; create file
mov	dx,offset filename	
mov cx,0
mov ah,3ch
int 21h

; input messgae
mov	dx,offset input	
mov ah,9
int 21h

mov	dx,offset newline	
mov ah,9
int 21h

; get input
buffer db 81
 db 0
 db 81 dup(0)
mov dx,offset buffer
mov ah,0ah
int 21h

; print to file

; open
mov ah,3dh
mov dx,offset filename
mov al,03
int 21h
push ax

; write
mov bx,ax
mov ah,40h
mov dx,offset buffer
inc dx
mov si,dx
mov byte ptr cl,[si]
inc dx
int 21h

; close
mov ah,3eh
pop bx
int 21h

; output messgae

mov	dx,offset newline	
mov ah,9
int 21h

mov	dx,offset output	
mov ah,9
int 21h

mov	dx,offset newline	
mov ah,9
int 21h

.exit 0
input db 'Please input a string:','$'
newline db 0dh,0ah,'$'
output db 'Written to file output.txt','$'
filename db 'output.txt',0h

end
