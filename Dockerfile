FROM node:alpine
VOLUME /var/www
WORKDIR /var/www
RUN apk --no-cache add python \
  && npm install --unsafe-perm -g harp \
  && npm install -g browser-sync
EXPOSE 3000
CMD harp server & browser-sync start --proxy localhost:9000 --files **/*
