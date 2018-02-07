FROM node:alpine
VOLUME /var/www
WORKDIR /var/www
RUN apk --no-cache add python \
  && npm install --unsafe-perm -g harp
EXPOSE 3000
CMD ["npm", "start"]
