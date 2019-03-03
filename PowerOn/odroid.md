
create solo user 
`adduser solo`

add solo to sudo 
`usermod -aG sudo solo`

edit visudo add to end of file 
`solo ALL=(ALL) NOPASSWD: ALL`

set static ip  

```
auto eth0
iface eth0 inet static
    address xxx.xxx.xxx.xxx 
    netmask xxx.xxx.xxx.xxx
    broadcast xxx.xxx.xxx.xxx
    gateway xxx.xxx.xxx.xxx 
    dns-nameservers xxx.xxx.xxx.xxx 

```


? install python 

