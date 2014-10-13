```shell
docker pull pihizi/rabbitmq
docker run --name pihizi-rabbitmq \
    -v /dev/log:/dev/log \
    -p 5672:5672 \
    -p 15672:15672 \
    -d pihizi/rabbitmq
```
