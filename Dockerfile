FROM node:latest

WORKDIR /usr/training-v1
USER root

EXPOSE 4200

COPY package*.json ./
COPY angu*.json ./
COPY ts*.json ./

RUN npm install

ENTRYPOINT /bin/bash