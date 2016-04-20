FROM java:base

ARG MAJOR=1
ARG MINOR=656

RUN apt-get -y update && apt-get -y install git

ENV PATH $JAVA_HOME/bin:$PATH

RUN curl -jkL "http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/${MAJOR}.${MINOR}/jenkins-war-${MAJOR}.${MINOR}.war" > /opt/jenkins.war && chmod 644 /opt/jenkins.war

ENV JENKINS_HOME /opt/jenkins

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]