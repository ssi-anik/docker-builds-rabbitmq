# syntax = edrevo/dockerfile-plus
FROM rabbitmq:3.10-management

# Delayed message exchange
ENV DME_VERSION="3.10.2"

INCLUDE+ ./includes/delayed_message_exchange.dockerfile
INCLUDE+ ./includes/base_bottom.dockerfile
