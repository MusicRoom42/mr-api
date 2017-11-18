FROM node:lastest

ENV TARGET /app

RUN mkdir $TARGET

ADD package.json $TARGET

WORKDIR $TARGET

RUN npm install

ENTRYPOINT ['npm', 'run', 'start']