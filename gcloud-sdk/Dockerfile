FROM google/cloud-sdk:234.0.0-alpine

ENV GAE_VERSION=1.9.83

COPY google_appengine_${GAE_VERSION}.zip /
RUN unzip google_appengine_${GAE_VERSION}.zip
RUN rm /google_appengine_${GAE_VERSION}.zip

ENV PATH /google_appengine:$PATH

## as per https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#entrypoint
#COPY ./docker-entrypoint.sh /
#ENTRYPOINT ["/docker-entrypoint.sh"]



