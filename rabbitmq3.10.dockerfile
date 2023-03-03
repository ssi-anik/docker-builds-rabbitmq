FROM rabbitmq:3.10-management

# Delayed message exchange
ENV DME_VERSION="3.10.2"

# https://stackoverflow.com/a/69217201/2190689
RUN curl -L https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/$DME_VERSION/rabbitmq_delayed_message_exchange-$DME_VERSION.ez > $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-$DME_VERSION.ez
RUN chown rabbitmq:rabbitmq $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-$DME_VERSION.ez

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
