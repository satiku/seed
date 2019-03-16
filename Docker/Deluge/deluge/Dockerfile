FROM arm32v7/ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update && apt-get install  -y deluged  deluge-common deluge-console





ADD core.conf /config/core.conf

ADD autoadd.conf /config/autoadd.conf 
ADD execute.conf /config/execute.conf 
ADD scheduler.conf /config/scheduler.conf 

ADD auth /config/auth

#RUN deluge-console "config -s allow_remote True"



CMD ["deluged", "-d", "-L", "info", "-c", "/config" ]
