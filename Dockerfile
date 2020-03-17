# we are extending everything from tomcat:8.0 image ...
FROM tomcat:8.0
MAINTAINER jagadeesh
COPY target/pebble-2.6.7-SNAPSHOT.war /usr/local/tomcat/webapps/
