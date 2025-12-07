FROM tomcat:8-jdk8-temurin
COPY target/*.war /usr/local/tomcat/webapps/java-web-app.war
