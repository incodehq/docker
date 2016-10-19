FROM incodehq/wildfly
MAINTAINER Incode Software, incode.org
COPY ping.war ${DEPLOYMENT_DIR}
HEALTHCHECK CMD curl --fail http://localhost:8080/ping/resources/pings/echo/+ || exit 1
