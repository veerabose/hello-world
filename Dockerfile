# Pull base image 
From tomcat:8-jre8 
#configured webhook

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
