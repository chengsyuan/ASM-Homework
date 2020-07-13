.model tiny
.code
.startup
mov    ah,0
mov    al,3
int    10h

mov ah,13h
mov al,0
mov bh,0

mov bp,offset string1
mov dl,0;x
mov dh,2;y
mov cx,20d; length
mov bl,00000100b ;attr
int 10h

mov bp,offset string2
mov dl,0;x
mov dh,3;y
mov cx,17d; length
mov bl,10000100b ;attr
int 10h

mov bp,offset string3
mov dl,0;x
mov dh,4;y
mov cx,17d; length
mov bl,00010101b ;attr
int 10h

mov bp,offset string4
mov dl,0;x
mov dh,5;y
mov cx,26d; length
mov bl,00100110b ;attr
int 10h

.exit 0
string1 db 'Name: Chengxuan Ying'
string2 db 'Number: 201785071'
string3 db 'Phone:18698746810'
string4 db 'Email: ying.cx@outlook.com'
end
