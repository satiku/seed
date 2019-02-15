

```
docker network create -d macvlan     --subnet=10.3.11.0/24     --gateway=10.3.11.1      -o parent=eth0 eth0_net
```


```
 --net=eth0_net --ip=10.3.11.11 
```
