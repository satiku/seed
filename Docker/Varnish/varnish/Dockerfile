FROM arm32v7/ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update && apt-get install  -y varnish  varnish-modules

ADD default.vcl /etc/varnish/default.vcl

CMD [ "varnishd", "-F", "-a", ":8096", "-T", "localhost:6082", "-f", "/etc/varnish/default.vcl",  "-s", "malloc,1536M" ]






