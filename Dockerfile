FROM openjdk:8
WORKDIR /tmp/tomcat
RUN mkdir /tmp/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz .
RUN tar -xzf /apache-tomcat-9.0.64.tar.gz
RUN cp /target/vprofile-v1.war .  /tmp/tomcat
EXPOSE 8080
CMD ["/bin/tomcat/startup.sh","run"]

