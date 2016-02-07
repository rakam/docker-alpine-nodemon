FROM alpine:3.3
RUN apk update && apk add nodejs && rm -rf /var/cache/apk/*
RUN npm install -g nodemon

VOLUME "/app"

WORKDIR "/app"

CMD ["nodemon"]
