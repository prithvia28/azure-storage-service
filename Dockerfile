FROM node:20.11.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --omit=dev

COPY . /src ./

CMD ["npm", "start"]