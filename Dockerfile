FROM node:current-alpine

ARG NODE_ENV=production
ARG PORT=9000

ENV HOME=/home/app
ENV PORT=${PORT}
ENV NODE_ENV=${NODE_ENV}

COPY package.json $HOME/

WORKDIR $HOME

RUN npm install --silent --progress=false && npm cache clean

COPY . $HOME/

CMD ["npm", "start"]

EXPOSE $PORT
