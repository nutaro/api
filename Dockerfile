FROM node:21-bookworm

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY index.js index.js

EXPOSE 3000

CMD ["node", "index.js"]