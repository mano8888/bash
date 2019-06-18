FROM ubuntu
COPY target/shell.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash

FROM ubuntu
RUN apt-get update && apt-get install nginx
COPY create-env.sh /usr/local/nginx/html
ENTRYPOINT service nginx start && bash
EXPOSE 80
 
FROM jenkins
USER root
ENV JAVA_OPTS=" -Xmx4096m"
ENV JENKINS_OPTS=" --handlerCounterMax=200"
RUN mkdir /var/log/jenkins-log
EXPOSE 8080

