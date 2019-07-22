FROM node:latest

ENV HOME=/home/app
ENV NODE_ENV $NODE_ENV
ENV $PORT $PORT

COPY package.json $HOME/

WORKDIR $HOME

RUN npm install --silent --progress=false

COPY . $HOME/

CMD ["npm", "start"]

EXPOSE $PORT
