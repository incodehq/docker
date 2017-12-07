FROM incodehq/java:alpine-1.5
LABEL maintainer="Incode Software, incode.org"
ENV TOMCAT_VERSION 8.5.23
ENV ARCHIVE apache-tomcat-${TOMCAT_VERSION}
ENV INSTALL_DIR /opt
ENV SERVER_HOME ${INSTALL_DIR}/${ARCHIVE}
ENV CATALINA_HOME ${SERVER_HOME}
ENV DEPLOYMENT_DIR ${SERVER_HOME}/webapps
RUN apk add --no-cache curl="7.56.1-r0" && \ 
    mkdir -p ${SERVER_HOME} && \
    mkdir -p $CATALINA_HOME/conf/Catalina/localhost && \
    curl http://apache.mirror.iphh.net/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.zip > ${SERVER_HOME}.zip && \
    unzip ${SERVER_HOME}.zip -d ${INSTALL_DIR} && \
    chmod a+x ${SERVER_HOME}/bin/catalina.sh && \
    apk del curl && \
    rm -rf ${DEPLOYMENT_DIR}/* && \
    rm -f ${SERVER_HOME}.zip
CMD ${SERVER_HOME}/bin/catalina.sh run
EXPOSE 8080
