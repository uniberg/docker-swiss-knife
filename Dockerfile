FROM debian:jessie
MAINTAINER Niklas Wilcke <niklas.wilcke@uniberg.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i "s/jessie main/jessie main contrib non-free/" /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
      tcpdump \
      snmp \
      snmp-mibs-downloader \
      net-tools \
      netcat \
      vim \
  && rm -rf /var/lib/apt/lists/*

CMD ['bash']
