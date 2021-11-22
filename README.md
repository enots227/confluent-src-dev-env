# Confluent Source Code Development Environment
This repository merely has a Dockerfile containing the instructions to build the Confluent development environment.

# Verified Confluent Apps
This repository has only been verified with the following Confluent apps/repositories:
* [confluentinc/kafka-connect-jdbc](https://github.com/confluentinc/kafka-connect-jdbc)

# Steps
* Clone repository:
```
git clone https://github.com/enots227/confluent-src-dev-env
```
* Build Docker image:
```
cd <github repos path>/confluent-src-dev-env
docker build -t confluent_src_dev_env .
```
* Run Docker image:
```
docker run -it -v /c/Users/<User>/<Confluent Java Source Code>:/mnt/src confluent_src_dev_env  bash

docker run -it -v /c/Users/user/kafka-connect-jdbc:/mnt/src confluent_src_dev_env  bash
```
* Build Java
```
cd /mnt/src
mvn clean install -DskipTests
```