FROM debian:7.6
MAINTAINER https://github.com/pihizi

ENV DEBIAN_FRONTEND noninteractive

ADD rabbitmq-signing-key-public.asc /tmp/rabbitmq-signing-key-public.asc
RUN apt-key add /tmp/rabbitmq-signing-key-public.asc

RUN echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list
RUN apt-get update && apt-get install -y rabbitmq-server

RUN /usr/sbin/rabbitmq-plugins enable rabbitmq_management

RUN echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config

EXPOSE 5672 15672 4369

CMD /usr/sbin/rabbitmq-server
