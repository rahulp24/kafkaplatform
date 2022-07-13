FROM confluentinc/cp-server-connect:7.1.0

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components,/mnt/plugins"

RUN confluent-hub install --no-prompt confluentinc/kafka-connect-ibmmq:11.0.15

COPY wmq/JavaSE /usr/share/confluent-hub-components/confluentinc-kafka-connect-ibmmq/lib

