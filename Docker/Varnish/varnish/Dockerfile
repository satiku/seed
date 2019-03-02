FROM arm32v7/ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update && apt-get install  -y varnish

ADD default.vcl /etc/varnish/default.vcl

CMD [ "varnishd", "-F", "-a", ":80", "-T", "localhost:6082", "-f", "/etc/varnish/default.vcl",  "-s", "malloc,512M" ]






