FROM ubuntu:trusty

RUN apt-get -y update && apt-get -y install curl 

RUN curl -jkL http://www-eu.apache.org/dist/tomcat/tomcat-7/v7.0.68/bin/apache-tomcat-7.0.68.tar.gz >> /opt/apache-tomcat-7.0.68.tar.gz \
		&& tar zxvf /opt/apache-tomcat-7.0.68.tar.gz -C /opt \
		&& rm /opt/apache-tomcat-7.0.68.tar.gz 

RUN curl -jkLH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jre-8u77-linux-x64.tar.gz" > /opt/jre-8u77-linux-x64.tar.gz\
 		&& tar zxvf /opt/jre-8u77-linux-x64.tar.gz -C /opt \
 		&& rm /opt/jre-8u77-linux-x64.tar.gz

ENV JAVA_HOME /opt/jre1.8.0_77
ENV CATALINA_HOME /opt/apache-tomcat-7.0.68

EXPOSE 8080

CMD ["/opt/apache-tomcat-7.0.68/bin/catalina.sh", "run"]