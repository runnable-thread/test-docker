FROM ubuntu:latest
RUN apt-get update
RUN apt-get insatll -y nodejs npm

COPY app.js /var/www/app.js
COPY package.json /var/www/package.json

WOKRDIR /var/www
RUN npm install

CMD nodejs app.js
