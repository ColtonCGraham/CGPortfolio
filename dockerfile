FROM node:20-alpine3.17

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json yarn.lock /usr/src/
RUN cd /usr/src \
    && yarn install --pure-lockfile

COPY . /usr/src
EXPOSE 3005
CMD ["npm" , "start"]