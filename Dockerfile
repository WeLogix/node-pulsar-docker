FROM node:14-buster-slim

RUN apt-get update && apt-get install -y wget && \
  wget https://welogix-updates.oss-cn-shanghai.aliyuncs.com/pulsar-client/apache-pulsar-client.deb  && \
  wget https://welogix-updates.oss-cn-shanghai.aliyuncs.com/pulsar-client/apache-pulsar-client-dev.deb && \
  apt-get install ./apache-pulsar-client*.deb && \
  ldconfig && rm -f ./apache-pulsar-client*.deb
