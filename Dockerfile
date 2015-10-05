#
# Graylog web interface Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

ENV WEB_INT_VERSION graylog-web-interface-1.2.1

# Update & install packages for graylog
RUN apt-get update && \
    apt-get install -y wget openjdk-7-jre

#Install and configure web interface
RUN wget --no-check-certificate https://packages.graylog2.org/releases/graylog2-web-interface/$WEB_INT_VERSION.tgz && \
 tar xvfz $WEB_INT_VERSION.tgz
ADD graylog-web-interface.conf /$WEB_INT_VERSION/conf/

#Add link for binary
RUN ln -s /$WEB_INT_VERSION/bin/graylog-web-interface /usr/bin/graylog-web-interface && ls -l /usr/bin/graylog-web-interface

EXPOSE 9000

#CMD ["/start.sh"]
CMD ["/usr/bin/graylog-web-interface"]
