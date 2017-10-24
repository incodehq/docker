FROM incodehq/java:1.0
MAINTAINER Incode Software, incode.org
ENV TOMCAT_VERSION 8.0.41
ENV ARCHIVE apache-tomcat-${TOMCAT_VERSION}
ENV INSTALL_DIR /opt
ENV SERVER_HOME ${INSTALL_DIR}/${ARCHIVE}
ENV CATALINA_HOME ${SERVER_HOME}
RUN curl -o ${SERVER_HOME}.zip -L http://apache.mirror.iphh.net/tomcat/tomcat-8/v8.0.41/bin/apache-tomcat-8.0.41.zip
RUN unzip ${SERVER_HOME}.zip -d /opt
RUN chmod a+x ${SERVER_HOME}/bin/catalina.sh
ENV DEPLOYMENT_DIR ${SERVER_HOME}/webapps/
ENTRYPOINT ${SERVER_HOME}/bin/catalina.sh run
EXPOSE 8080
