# FROM tomcat:8-jdk8-temurin
# COPY target/*.war /usr/local/tomcat/webapps/java-web-app.war

FROM tomcat:tomcat:9-jdk17-corretto-al2
COPY /var/lib/jenkins/workspace/java-web-app/target/*.war /usr/local/tomcat/webapps/java-web-app.war
