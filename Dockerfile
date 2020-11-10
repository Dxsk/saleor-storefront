FROM node:lts-alpine
ENV LANG=C.UTF-8
RUN apk update
RUN apk upgrade
RUN apk add mariadb-connector-c-dev gcc libc-dev linux-headers
RUN apk add python3 curl
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN echo "Europe/Paris" > /etc/timezone
RUN apk del tzdata
RUN mkdir -p /code
RUN chown -R node:node /code
RUN chmod 750 -R /code
ARG API_URI
ARG SENTRY_DSN
ARG SENTRY_APM
ARG DEMO_MODE
ARG GTM_ID
WORKDIR /code

