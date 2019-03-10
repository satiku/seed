#FROM arm32v7/ubuntu:bionic
FROM arm32v7/debian:stretch

COPY zabbix-release_4.0-2+stretch_all.deb  zabbix-release_4.0-2+stretch_all.deb

RUN dpkg -i zabbix-release_4.0-2+stretch_all.deb

RUN apt-get update ; apt-get install zabbix-frontend-php -y

ADD zabbix.conf /etc/apache2/conf-enabled/zabbix.conf

CMD [ "apachectl", "-DFOREGROUND"] 
