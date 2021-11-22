FROM gradle:7.3.0-jdk11

SHELL ["/bin/bash", "-c"] 

ENV GRADLE_VERSION=7.3

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install maven -y

RUN cd /opt

RUN git clone https://github.com/confluentinc/kafka.git /opt/kafka
RUN git clone https://github.com/confluentinc/common /opt/common
RUN git clone https://github.com/confluentinc/rest-utils /opt/rest-utils
RUN git clone https://github.com/confluentinc/schema-registry /opt/schema-registry

RUN cd /opt/kafka ; ./gradlewAll install
RUN cd /opt/common ; mvn clean install -DskipTests
RUN cd /opt/rest-utils ; mvn clean install -DskipTests
RUN cd /opt/schema-registry ; mvn clean install -DskipTests