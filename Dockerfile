FROM node:lts-alpine
RUN apk update && apk add bash && apk add ffmpeg

WORKDIR /var/taxi-app

COPY ./services/taxi-app /var/taxi-app
RUN npm install

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.0.0/wait /wait
RUN chmod +x /wait

CMD ["npm", "start"]
