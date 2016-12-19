# Tomcat

To run, use:
docker run --name tomcat -d -p 8080:8080 --restart=always incodehq/tomcat

To configure Tomcat to use a database container (named postgres), use:
docker run --name tomcat -d -p 8080:8080 --link postgres:db --restart=always incodehq/tomcat

To configure Tomcat to use a database container (named postgres) and provide ISIS apps with connection details, use:
docker run --name tomcat  -d -p 8080:8080 --link postgres:db -e ISIS_OPTS="isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionDriverName=org.postgresql.Driver||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionURL=jdbc:postgresql://db:5432/isis||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionUserName=isis||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionPassword=isis" --restart=always incodehq/tomcat
