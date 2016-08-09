FROM phusion/baseimage:0.9.19

CMD ["/sbin/my_init"]

MAINTAINER Ryan Moore <ryan.moore@greyrocksoft.com>

RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update -y
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install oracle-java7-installer -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
