FROM incodehq/payara-configured
MAINTAINER Incode Software, incode.org
# For more information about ping see: https://github.com/AdamBien/ping/
ADD ping.war ${DEPLOYMENT_DIR}
HEALTHCHECK CMD curl --fail http://localhost:8080/ping/resources/pings/echo/+ || exit 1
