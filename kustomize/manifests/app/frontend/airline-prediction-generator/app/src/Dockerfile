FROM openjdk:8-jre

# use alpine image
# FROM openjdk:8-jre-alpine

# for openjdk:8-jre-alpine image
#RUN apk --no-cache add curl

MAINTAINER ably77
ENV SCALA_VERSION 2.13
ENV KAFKA_VERSION 2.7.0
ADD generator.sh allyears.csv allyears2k.csv /bin/
RUN curl http://apache.mirrors.spacedump.net/kafka/"$KAFKA_VERSION"/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz | tar xvz --strip-components=1
WORKDIR /bin
ENTRYPOINT ["/bin/generator.sh"]
