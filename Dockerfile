FROM node:12

WORKDIR /opt/app

COPY package.json ./

RUN yarn install

COPY . /opt/app

RUN mv .env.example .env

ENV PORT 80
EXPOSE 80

CMD [ "yarn", "run", "start" ]