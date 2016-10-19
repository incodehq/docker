FROM incodehq/payara
MAINTAINER Incode Software, incode.org
RUN echo ${DOMAIN_NAME}
RUN asadmin start-domain ${DOMAIN_NAME} && \
    asadmin delete-jvm-options -Xmx512m  && \
    asadmin create-jvm-options -Xms2G  && \
    asadmin create-jvm-options -Xmx2G  && \
    asadmin stop-domain ${DOMAIN_NAME}

