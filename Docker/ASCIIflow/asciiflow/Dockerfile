FROM arm32v7/nginx:1.16.1

ENV SET_CONTAINER_TIMEZONE false 
ENV CONTAINER_TIMEZONE "" 

# manage user www-data
RUN usermod -u 1000 www-data

# manage start container


# install extra nginx
RUN apt-get update && apt-get install -y \
        apache2-utils \
        git \
        nginx-extras \
    && rm -rf /var/lib/apt/lists/* 

# COPY default.conf /etc/nginx/conf.d/default.conf
# RUN rm /etc/nginx/sites-enabled/default

# add theme
WORKDIR /var/www/html

RUN rm -rf *
RUN git clone https://github.com/lewish/asciiflow2.git ./

EXPOSE 80

