FROM rabbitmq:3.11-management

# Delayed message exchange
ENV DME_VERSION="3.11.1"

INCLUDE+ ./includes/delayed_message_exchange.dockerfile
INCLUDE+ ./includes/base_bottom.dockerfile
