FROM arm32v7/ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update && apt-get install  -y tor tor-arm


ADD torrc /etc/tor/torrc


CMD [ "tor" ]






