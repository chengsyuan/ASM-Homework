.model tiny
.code
.startup

mov     dx,offset string  
mov    ah,9                    
int       21h                   
.exit 0			

string db  'Name: Chengxuan Ying', 0dh,0ah, 'Number: 201785071', 0dh,0ah, 'Phone:18698746810', 0dh,0ah, 'Email: ying.cx@outlook.com', 0dh,0ah, '$' 
end 			
