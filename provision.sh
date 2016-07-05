#!/bin/bash

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
echo "deb http://pkg.jenkins-ci.org/debian binary/" >> /etc/apt/sources.list

apt-get update
apt-get -y install jenkins

service jenkins restart


echo "192.168.50.50 jmaster" >> /etc/hosts
echo "192.168.50.60 jnode" >> /etc/hosts
