FROM node:21-bookworm

WORKDIR /app

COPY src/package.json package.json
COPY src/package-lock.json package-lock.json

RUN npm install

COPY src/ .

EXPOSE 3000

CMD ["node", "server.js"]