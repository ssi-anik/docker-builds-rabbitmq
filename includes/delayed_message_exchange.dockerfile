RUN apt-get update -y && apt-get install -y nano curl

# https://stackoverflow.com/a/69217201/2190689
RUN curl -L https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/$DME_VERSION/rabbitmq_delayed_message_exchange-$DME_VERSION.ez > $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-$DME_VERSION.ez
RUN chown rabbitmq:rabbitmq $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-$DME_VERSION.ez
