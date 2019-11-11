FROM arm32v7/ubuntu:bionic 

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y openjdk-8-jdk ansible ssh git

ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war jenkins.war

RUN ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -N ""

CMD [ "java", "-jar",  "jenkins.war" ]




 
