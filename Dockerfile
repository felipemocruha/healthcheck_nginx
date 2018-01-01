FROM alpine:3.6

ENV TZ=America/Sao_Paulo
RUN apk add --update --no-cache ca-certificates nginx \
    && mkdir -p /run/nginx \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && rm /etc/nginx/conf.d/default.conf

COPY ./healthcheck.conf /etc/nginx/conf.d/healthcheck.conf
CMD ["nginx", "-g", "daemon off;"]
