FROM debian:jessie

WORKDIR /home/

RUN apt-get update && apt-get install --yes apache2 && \
    apt-get install --yes git

RUN git clone https://github.com/prefapp/saudo-gl.git && cp -r /home/saudo-gl/* /var/www/html

CMD apachectl -DFOREGROUND 
