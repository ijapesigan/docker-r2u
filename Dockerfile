FROM rocker/r2u:22.04

ADD src /usr/src/local/src
RUN cd /usr/src/local/src     && \
    chmod setup.sh            && \
    ./setup.sh                && \
    rm -rf /usr/src/local/src

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# extra metadata
LABEL author="Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"
LABEL description="jeksterslab/r2u container."
