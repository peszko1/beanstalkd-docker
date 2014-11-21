FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get install -y beanstalkd
RUN mkdir -p /var/lib/beanstalkd

EXPOSE 11300

VOLUME /var/lib/beanstalkd

CMD ["/usr/bin/beanstalkd", "-b", "/var/lib/beanstalkd"]