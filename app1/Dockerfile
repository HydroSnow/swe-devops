FROM node:16

RUN useradd -ms /bin/bash app

USER app

WORKDIR /home/app

COPY package.json package-lock.json ./

RUN npm ci

COPY index.js ./

CMD node index.js

EXPOSE 8080
