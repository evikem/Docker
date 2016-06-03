#!/bin/bash

sudo -s

add-apt-repository ppa:webupd8team/sublime-text-3

apt-get update -y
 
apt-get install lxde -y  
echo 'setxkbmap -layout "us,hu" -option "grp:alt_shift_toggle"' >> /etc/profile

apt-get install -y git-all htop sublime-text-installer

curl -j -k -L -H "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz" > /opt/jdk-8u77-linux-x64.tar.gz
tar zxvf /opt/jdk-8u77-linux-x64.tar.gz -C /opt
update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_77/bin/java" 
update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk1.8.0_77/bin/javac"
echo 'export JAVA_HOME="/opt/jdk1.8.0_77"' >> /etc/profile

apt-get -y install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' >> /etc/apt/sources.list.d/docker.list
apt-get -y update
apt-get -y install apparmor
apt-get -y update
apt-get -y install docker-engine

curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose &&\
chmod +x /usr/local/bin/docker-compose

reboot