FROM debian:7.6
MAINTAINER https://github.com/pihizi

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y rabbitmq-server

RUN echo "[{rabbit, [{loopback_users, []}]}]." >> /etc/rabbitmq/rabbitmq.config

CMD service rabbitmq-server restart

EXPOSE 5672

