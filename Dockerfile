FROM ruby:2.7.4 

LABEL Description="Docker for avr-gcc-embedded projects"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install gcc gcc-arm-none-eabi git vim binutils-avr gcc-avr make srecord curl

# clean cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN gem install ceedling -v 0.31.0

VOLUME ["/workspace"]
CMD ["/bin/bash"]
