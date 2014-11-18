```shell
docker pull pihizi/rabbitmq
docker run --name pihizi-rabbitmq \
    --dns 172.17.42.1 \
    -v /dev/log:/dev/log \
    -p 5672:5672 \
    -p 15672:15672 \
    -d pihizi/rabbitmq
```
