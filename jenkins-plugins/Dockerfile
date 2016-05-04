FROM java:base

ARG MAJOR=1
ARG MINOR=656

RUN apt-get -y update && apt-get -y install git

ENV PATH $JAVA_HOME/bin:$PATH

RUN curl -jkL "http://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/${MAJOR}.${MINOR}/jenkins-war-${MAJOR}.${MINOR}.war" > /opt/jenkins.war && chmod 644 /opt/jenkins.war

ENV JENKINS_HOME /opt/jenkins

RUN cd /opt && mkdir jenkins && cd /opt/jenkins && mkdir plugins

RUN curl -jkL "http://updates.jenkins-ci.org/latest/gradle.hpi" > /opt/jenkins/plugins/gradle.hpi

RUN curl -jkL "http://updates.jenkins-ci.org/latest/git.hpi" > /opt/jenkins/plugins/git.hpi

RUN curl -jkL "http://updates.jenkins-ci.org/latest/git-client.hpi" > /opt/jenkins/plugins/git-client.hpi
RUN curl -jkL "http://updates.jenkins-ci.org/latest/scm-api.hpi" > /opt/jenkins/plugins/scm-api.hpi
RUN curl -jkL "http://updates.jenkins-ci.org/latest/matrix-project.hpi" > /opt/jenkins/plugins/matrix-project.hpi
RUN curl -jkL "http://updates.jenkins-ci.org/latest/ssh-credentials.hpi" > /opt/jenkins/plugins/ssh-credentials.hpi
RUN curl -jkL "http://updates.jenkins-ci.org/latest/mailer.hpi" > /opt/jenkins/plugins/mailer.hpi
RUN curl -jkL "http://updates.jenkins-ci.org/latest/credentials.hpi" > /opt/jenkins/plugins/credentials.hpi

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]