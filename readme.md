# RabbitMQ Builds

:warning: **WARNING: DON'T USE IN PRODUCTION.**

## Images

|        Base Image              |                     Tag                     |    Exposed Ports    |
|--------------------------------|---------------------------------------------|---------------------|
| `rabbitmq:3.9-management`      | `sirajul/rabbitmq:3.9-management-latest`    |   `5672`, `15672`   |
| `rabbitmq:3.10-management`     | `sirajul/rabbitmq:3.10-management-latest`   |   `5672`, `15672`   |
| `rabbitmq:3.11-management`     | `sirajul/rabbitmq:3.11-management-latest`   |   `5672`, `15672`   |

## Management login credentials

- Username: `guest`
- Password: `guest`

## Tips

```yaml
# ...
# Volume will persist if hostname is specified, at least on 3.9
hostname: rabbitmq-server # or whatever you specify
volumes:
    - ${BACKUP_PATH}:/var/lib/rabbitmq/
# ...

# To set different user, password and vhost ONLY THE FIRST RUN
environment:
    - RABBITMQ_DEFAULT_USER=user
    - RABBITMQ_DEFAULT_PASS=password
    - RABBITMQ_DEFAULT_VHOST=my-vhost
```

Check [rabbitmq](https://hub.docker.com/_/rabbitmq) for more
