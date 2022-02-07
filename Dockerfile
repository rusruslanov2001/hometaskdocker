FROM ubuntu:20.04
EXPOSE 8080
RUN apt-get update
RUN apt-get install default-jdk -y
RUN apt-get install tomcat9 -y
RUN apt-get install git -y
RUN mvn pacakge
RUN cd /tmp/boxfuse-sample-java-war-hello
ADD hello-1.0.war /var/lib/tomcat9/webapps
CMD ["catalina.sh", "run"]
