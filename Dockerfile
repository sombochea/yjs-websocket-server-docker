FROM node:alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

ENV PORT=1234

EXPOSE 1234

CMD ["node", "./node_modules/y-websocket/bin/server.js"]
