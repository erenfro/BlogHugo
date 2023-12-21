# syntax=docker/dockerfile:1

# Building binary
FROM alpine:3.18.4 AS build-stage
LABEL \
    org.opencontainers.image.title="BlogHugo" \
    org.opencontainers.image.source="https://github.com/erenfro/BlogHugo"

RUN apk add --no-cache hugo

WORKDIR /app

COPY . .
RUN hugo

# Deploy to slim image
FROM nginx:1.25.3-alpine AS build-release-stage

WORKDIR /usr/share/nginx/html

COPY --from=build-stage /app/public .

EXPOSE 8080/tcp
