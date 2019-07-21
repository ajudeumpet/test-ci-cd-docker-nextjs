FROM node:latest

ENV HOME=/home/app

COPY package.json $HOME/

WORKDIR $HOME

RUN npm install --silent --progress=false

COPY . $HOME/

CMD ["npm", "start"]

EXPOSE 9000
