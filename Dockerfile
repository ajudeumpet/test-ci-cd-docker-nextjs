FROM node:latest

ENV HOME=/home/app
ARG NODE_ENV=production
ARG PORT=9000

COPY package.json $HOME/

WORKDIR $HOME

RUN npm install --silent --progress=false

COPY . $HOME/

CMD ["npm", "start"]

EXPOSE $PORT
