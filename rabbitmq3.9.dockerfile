# syntax = edrevo/dockerfile-plus
FROM rabbitmq:3.9-management

ENV DME_VERSION="3.9.0"

INCLUDE+ ./includes/delayed_message_exchange.dockerfile
INCLUDE+ ./includes/base_bottom.dockerfile
