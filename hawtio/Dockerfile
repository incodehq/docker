FROM incodehq/java
LABEL maintainer="Incode Software, incode.org"

RUN mkdir -p /hawtio
WORKDIR /hawtio

ENV HAWTIO_VERSION 2.0.3

ADD https://oss.sonatype.org/content/repositories/public/io/hawt/hawtio-app/${HAWTIO_VERSION}/hawtio-app-${HAWTIO_VERSION}.jar /hawtio/hawtio-app-${HAWTIO_VERSION}.jar

EXPOSE 8080

CMD java -jar hawtio-app-${HAWTIO_VERSION}.jar