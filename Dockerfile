FROM node:18.20.8-slim

WORKDIR /app

COPY BankAPICollect/package*.json ./
COPY BankAPICollect/src .

RUN npm install

COPY . .

CMD ["node", "update.js"]
