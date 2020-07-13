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
mov cx,9d; length
mov bl,00000100b ;attr
int 10h

mov bp,offset string2
mov dl,0;x
mov dh,3;y
mov cx,10d; length
mov bl,00000101b ;attr
int 10h

mov bp,offset string3
mov dl,0;x
mov dh,4;y
mov cx,11d; length
mov bl,00000110b ;attr
int 10h

mov bp,offset string4
mov dl,0;x
mov dh,5;y
mov cx,17d; length
mov bl,00000111b ;attr
int 10h

mov bp,offset string5
mov dl,0;x
mov dh,6;y
mov cx,15d; length
mov bl,00001000b ;attr
int 10h

mov bp,offset string6
mov dl,0;x
mov dh,7;y
mov cx,13d; length
mov bl,00001001b ;attr
int 10h

mov bp,offset string7
mov dl,0;x
mov dh,8;y
mov cx,13d; length
mov bl,00001010b ;attr
int 10h

mov bp,offset string8
mov dl,0;x
mov dh,9;y
mov cx,14d; length
mov bl,00001011b ;attr
int 10h

mov bp,offset string9
mov dl,0;x
mov dh,10d;y
mov cx,15d; length
mov bl,00001100b ;attr
int 10h

.exit 0
string1 db '        .'
string2 db '       ,O,'
string3 db '      ,OOO,'
string4 db '`oooooOOOOOooooo`'
string5 db '  `OOOOOOOOOOO`'
string6 db '    `OOOOOOO`'
string7 db '    OOOO OOOO'
string8 db '   OOO`   `OOO'
string9 db '  O`         `O'
end
