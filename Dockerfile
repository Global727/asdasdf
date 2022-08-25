FROM node:slim

RUN mkdir -p /app

WORKDIR /app

COPY index.js app/index.js
COPY package.json app/package.json

RUN npm install
COPY . /app/
CMD ["npm", "start"]

ENTRYPOINT node index.js 