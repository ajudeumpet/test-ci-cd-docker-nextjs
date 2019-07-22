FROM node:latest

ENV HOME=/home/app
ARG NODE_ENV=development

COPY package.json $HOME/

WORKDIR $HOME

RUN npm install --silent --progress=false

COPY . $HOME/

CMD ["npm", "start"]

EXPOSE 9000
