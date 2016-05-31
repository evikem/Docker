FROM java:base

RUN apt-get -y update && apt-get -y install git openssh-server curl

ENV PATH $JAVA_HOME/bin:$PATH

RUN apt-get -y install apt-transport-https ca-certificates &&\
	apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D &&\
	echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' >> /etc/apt/sources.list.d/docker.list &&\
	apt-get -y update &&\
	apt-get -y install apparmor &&\
	apt-get -y update &&\
	apt-get -y install docker-engine

RUN	curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose &&\
	chmod +x /usr/local/bin/docker-compose

RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd &&\
    mkdir -p /var/run/sshd

RUN adduser --quiet --disabled-password --gecos "" jenkins &&\
    echo "jenkins:jenkins" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]