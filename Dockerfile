
FROM jenkins
USER root 
ENV JAVA_OPTS="-Xmx4096m"
ENV JENKINS_OPTS=" --handlerCountMax=200"
run mkdir /var/log/jenkins-log
EXPOSE 8080




