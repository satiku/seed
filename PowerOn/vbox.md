
SPECS

Memory: 2GB - 4GB
Drive: 32GB 


INSTALL Options 
No desktop enviorment 
Add SSH server


POST Install 

comment out cd-rom repo 


run as root
`su -`

apt-get update 
apt-get install git ansible sudo  


`usermod -aG sudo zhudson`

edit visudo add to end of file 
`zhudson ALL=(ALL) NOPASSWD: ALL`


ssh-keygen
ssh-copy-id zhudson@127.0.0.1

clone seed repo and run ansible-playbook on localhost
playbook may freeze on oh-my-zsh


apt-get install linux-headers-amd64 make gcc perl 
    sh ./VBoxLinuxAdditions.run

