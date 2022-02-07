FROM ubuntu:20.04
RUN apt-get install -y default-jdk
RUN apt-get install -y tomcat9
RUN apt-get install -y git
RUN apt-get install -y maven
RUN mvn package
ADD hello-1.0.war /var/lib/tomcat9/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
