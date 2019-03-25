FROM tomcat:7.0
COPY target/shell.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash

FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
COPY result /usr/local/nginx/html
ENTRYPOINT service nginx start && bash
EXPOSE 80
