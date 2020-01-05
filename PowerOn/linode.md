
create solo user 
`adduser solo`

set solo password 
`passwd solo`

add solo to sudo 
`usermod -aG sudo solo`

edit visudo add to end of file 
`solo ALL=(ALL) NOPASSWD: ALL`



