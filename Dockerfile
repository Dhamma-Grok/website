FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8990

RUN npm run build

CMD [ "node", "build" ]
