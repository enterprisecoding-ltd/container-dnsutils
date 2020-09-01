FROM alpine:latest
LABEL maintainer="fatih@enterprisecoding.com"
RUN addgroup -S dnsutils && adduser -S dnsutils -G dnsutils
RUN apk update && apk add --no-cache bind-tools

USER dnsutils