.model tiny
.code
.startup
mov	dx,offset org_str	
mov ah,9
int 21h

mov	dx,offset newline	
mov ah,9
int 21h

mov	dx,offset string	
mov ah,9
int 21h

mov	dx,offset newline	
mov ah,9
int 21h

mov	dx,offset enc_str	
mov ah,9
int 21h
	
mov	dx,offset newline	
mov ah,9
int 21h


mov cx,20
mov si,offset string	
lp:
mov al,[si]
xor al,00111100b
mov byte ptr [si],al
inc si
loop lp
mov	dx,offset string	
mov ah,9
int 21h
	
mov	dx,offset newline	
mov ah,9
int 21h

mov	dx,offset dec_str	
mov ah,9
int 21h

mov	dx,offset newline	
mov ah,9
int 21h

mov cx,20
mov si,offset string	
lp2:
mov al,[si]
xor al,00111100b
mov byte ptr [si],al
inc si
loop lp2
mov	dx,offset string	
mov ah,9
int 21h

mov	dx,offset newline	
mov ah,9
int 21h

.exit 0
string db 'Name: Chengxuan Ying','$'
newline db 0dh,0ah,'$'
org_str db 'Orginal String','$'
enc_str db 'Encoded String','$'
dec_str db 'Decoded String','$'


end
