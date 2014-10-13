FROM debian:7.6
MAINTAINER https://github.com/pihizi

ENV DEBIAN_FRONTEND noninteractive

CMD echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y rabbitmq-server

CMD echo "[{rabbit, [{loopback_users, []}]}]." >> /etc/rabbitmq/rabbitmq.config

EXPOSE 5672

