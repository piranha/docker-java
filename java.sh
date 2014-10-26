#!/bin/sh

# Information Of Package
JDK_VERSION=jdk1.8.0_25
JDK_PACKAGE=jdk-8u25-linux-x64.tar.gz
JDK_LINK=http://download.oracle.com/otn-pub/java/jdk/8u25-b17/$JDK_PACKAGE

# Java
cd /tmp && \
curl -b gpw_e24=http%3A%2F%2Fwww.oracle.com -b oraclelicense=accept-securebackup-cookie -O -L $JDK_LINK && \
tar -zxf /tmp/$JDK_PACKAGE -C /opt && \
ln -s /opt/$JDK_VERSION /opt/java && \
rm -rf /tmp/* /var/tmp/*
