FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY target/*.war /opt/apache-tomcat-8.5.66/webapps/dockeransible.war
