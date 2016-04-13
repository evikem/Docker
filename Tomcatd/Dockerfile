FROM ubuntu:trusty

ARG MAJOR=7
ARG MINOR=0
ARG PATCH=68
ARG JMAJOR=8
ARG JUPDATE=77
ARG JB=03

RUN apt-get -y update && apt-get -y install curl 

RUN curl -jkL http://www-eu.apache.org/dist/tomcat/tomcat-${MAJOR}/v${MAJOR}.${MINOR}.${PATCH}/bin/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}.tar.gz >> /opt/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}.tar.gz \
		&& tar zxvf /opt/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}.tar.gz -C /opt \
		&& rm /opt/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}.tar.gz 

RUN curl -jkLH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JMAJOR}u${JUPDATE}-b${JB}/jre-${JMAJOR}u${JUPDATE}-linux-x64.tar.gz" > /opt/jre-${JMAJOR}u${JUPDATE}-linux-x64.tar.gz \
 		&& tar zxvf /opt/jre-${JMAJOR}u${JUPDATE}-linux-x64.tar.gz -C /opt \
 		&& rm /opt/jre-${JMAJOR}u${JUPDATE}-linux-x64.tar.gz

ENV JAVA_HOME /opt/jre1.${JMAJOR}.0_${JUPDATE}
ENV CATALINA_HOME /opt/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}
ENV PATH $CATALINA_HOME/bin:$PATH

EXPOSE 8080

CMD ["catalina.sh", "run"]