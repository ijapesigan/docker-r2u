FROM rocker/r2u:22.04

COPY scripts/setup.sh /usr/src/local/setup.sh
RUN chmod 777 /usr/src/local/setup.sh         && \
    ./usr/src/local/setup.sh                  && \
    rm -rf /usr/src/local/setup.sh

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL description="jeksterslab/r2u container."
