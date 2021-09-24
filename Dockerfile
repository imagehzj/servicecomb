FROM ttbb/base:jdk11

WORKDIR /opt/sh

ARG version=2.0.0
ARG download=2.0.0-linux-amd64

RUN wget https://dlcdn.apache.org/servicecomb/servicecomb-service-center/$version/apache-servicecomb-service-center-$download.tar.gz  && \
mkdir -p servicecomb && \
tar -xf apache-servicecomb-service-center-$download.tar.gz -C servicecomb --strip-components 1 && \
rm -rf apache-servicecomb-service-center-$download.tar.gz

ENV SERVICECOMB_HOME /opt/sh/servicecomb

WORKDIR /opt/sh/servicecomb