FROM arm32v7/node:8.9.4-slim

# RUN apk add --no-cache git
RUN apt-get update && apt-get install -y git

WORKDIR /app

COPY package-lock.json /app
COPY package.json /app
RUN npm install

COPY . /app

EXPOSE 3000

CMD npm start
