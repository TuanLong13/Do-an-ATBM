FROM node:20.18.0
WORKDIR /usr/src/app

EXPOSE 3000

CMD [ "npx", "nodemon", "index.js" ]

COPY package*.json /usr/src/app/
RUN npm install

COPY . /usr/src/app/