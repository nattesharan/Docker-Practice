FROM node:8

RUN mkdir /nodeapp

WORKDIR /nodeapp

COPY package.json package.json

RUN npm install && npm cache clean --force

ADD . /nodeapp

EXPOSE 3000

CMD ["node", "app.js"]