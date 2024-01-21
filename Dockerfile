# syntax = edrevo/dockerfile-plus

FROM alpine:edge

INCLUDE+ Dockerfile.base

#TODO: Install language
#RUN apk add <lang>

# remove apk cache
RUN rm -rf /var/cache/apk/* 

# Copy Config
COPY .config /root/.config
