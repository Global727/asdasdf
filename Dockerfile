FROM node:slim

RUN mkdir -p /app

WORKDIR /app
COPY . /app/
COPY index.js /app/index.js
COPY package.json /app/package.json

RUN npm install
EXPOSE 8080
ENTRYPOINT node index.js 