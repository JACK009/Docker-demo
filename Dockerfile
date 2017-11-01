FROM node:latest

MAINTAINER M Mercy

ENV NODE_ENV=production
ENV PORT=8080

COPY . /var/www
WORKDIR /var/www

#VOLUME ["/var/www"]

RUN nmp install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]