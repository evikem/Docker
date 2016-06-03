FROM javajre:latest

ARG MAJOR=7
ARG MINOR=0
ARG PATCH=69

RUN apt-get -y update && apt-get -y install curl 

RUN curl -jkL http://www-eu.apache.org/dist/tomcat/tomcat-${MAJOR}/v${MAJOR}.${MINOR}.${PATCH}/bin/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}.tar.gz >> /opt/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}.tar.gz \
		&& tar zxvf /opt/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}.tar.gz -C /opt \
		&& rm /opt/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}.tar.gz

RUN cd /opt/apache-tomcat-7.0.69/conf/ && rm tomcat-users.xml 

COPY tomcat-users.xml /opt/apache-tomcat-7.0.69/conf/tomcat-users.xml 

ENV CATALINA_HOME /opt/apache-tomcat-${MAJOR}.${MINOR}.${PATCH}
ENV PATH $CATALINA_HOME/bin:$PATH

EXPOSE 8080

CMD ["catalina.sh", "run"]