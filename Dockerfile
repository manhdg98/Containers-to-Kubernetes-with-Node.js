# Intro
FROM node:10-alpine

#  Node modules
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

EXPOSE 8080

CMD [ "node", "app.js" ]