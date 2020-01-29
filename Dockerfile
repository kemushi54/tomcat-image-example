FROM java
MAINTAINER jack
RUN sed -i '/jessie-updates/d' /etc/apt/sources.list  # Now archived
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN http://ftp.twaren.net/Unix/Web/apache/tomcat/tomcat-7/v7.0.99/bin/apache-tomcat-7.0.99.tar.gz

RUN tar zxvf apache-tomcat-7.0.99.tar.gz

CMD ["/apache-tomcat-7.0.99/bin/catalina.sh", "run"]

EXPOSE 8080
