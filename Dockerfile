FROM rocker/r2u:22.04

ADD tools /usr/src/local/src
RUN cd /usr/src/local/src     && \
    chmod 777 setup.sh        && \
    ./setup.sh                && \
    rm -rf /usr/src/local/src

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# extra metadata
LABEL author="Ivan Jacob Agaloos Pesigan <ijapesigan@gmail.com>"
LABEL description="ijapesigan/r2u container."
