FROM arm32v7/ubuntu:bionic 

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y openjdk-8-jdk

ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war jenkins.war

CMD [ "java", "-jar",  "jenkins.war" ]





