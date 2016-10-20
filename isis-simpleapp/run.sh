#!/bin/bash
docker run --name isis-simpleapp --link postgres:db -e ISIS_OPTS="isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionDriverName=org.postgresql.Driver||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionURL=jdbc:postgresql://db:5432/incodehqdb||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionUserName=incodehq||isis.persistor.datanucleus.impl.javax.jdo.option.ConnectionPassword=incodehq" -p 8081:8080 -d incodehq/isis-simpleapp
# run with in memory database:
# docker run -d -p 8080:8080 --name isis-simpleapp incodehq/isis-simpleapp

