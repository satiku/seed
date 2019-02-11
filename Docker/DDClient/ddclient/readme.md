 



```
docker run -d --mount type=bind,source=/home/pi/locals/ddclient/ddclient.conf,target=/etc/ddclient.conf ddclient 
```





example ddclient.conf


```
use=web, web=dynamicdns.park-your-domain.com/getip
protocol=namecheap
server=dynamicdns.park-your-domain.com
login={domain}
password={ddns specific password}
{subdomain}

```
