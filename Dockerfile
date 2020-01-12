FROM node:12-alpine
RUN apk add --update --no-cache libtool autoconf automake alpine-sdk python3 tini
RUN mkdir /app
WORKDIR /app
ADD package.json .
ADD package-lock.json .
RUN npm ci
ADD . ./
EXPOSE 8008
VOLUME /root/.ssb
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "/app/index.js"]
