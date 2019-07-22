FROM node:latest

ARG NODE_ENV=development
ARG PORT=8000

ENV HOME=/home/app

COPY package.json $HOME/

WORKDIR $HOME

RUN npm install --silent --progress=false

COPY . $HOME/

CMD ["npm", "start"]

EXPOSE $PORT
