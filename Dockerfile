FROM mhart/alpine-node:base

RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN apk add --update postgresql-client

WORKDIR /src
ADD . .

EXPOSE 3000
CMD ["bin/www"]
