FROM node:lts-alpine as base
WORKDIR /api
COPY package*.json ./
RUN npm install
COPY ./public/ ./public/
COPY ./bin/ ./bin/
COPY ./views/ ./views/
COPY ./routes/ ./routes/
COPY ./app.js ./app.js
EXPOSE 3000

CMD [ "npm", "start"]


