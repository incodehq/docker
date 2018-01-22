FROM alpine:3.7
LABEL maintainer="Incode Software, incode.org"
ENV JRE_HOME /usr/lib/jvm/java-1.8-openjdk/
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/lib/jvm/java-1.8-openjdk/bin
RUN apk add --no-cache openjdk8-jre="8.131.11-r2" && \
    rm -rf /var/cache/apk/*
