FROM node:17-alpine
LABEL org.opencontainers.image.source https://github.com/clickiwoo/caprover-action
RUN apk add --no-cache git && npm install -g caprover && npm cache clean --force

COPY run.sh /run.sh

ENTRYPOINT ["sh","/run.sh"]