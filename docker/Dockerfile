FROM ubuntu:latest

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        # General tools
        dosbox git unzip wget wine32 \
        # Libraries
        python3-colorama python3-pip \
        # Tools
        uefitool uefitool-cli \
    && apt-get clean -y \
    && pip3 install pltable

# CBROM is a DOS application
RUN mkdir /tools \
    && cd /tools \
    && wget http://www.lejabeach.com/sisubb/CBROM215.zip -O /tools/cbrom.zip \
    && unzip /tools/cbrom.zip \
    && rm /tools/cbrom.zip

# MCExtractor is a Python script
RUN cd /tools \
    && git clone --branch r151 https://github.com/platomav/MCExtractor.git

# intelmicrocodelist.exe is a Win32 application
COPY ./intelmicrocodelist.sh /usr/bin/intelmicrocodelist
RUN cd /tools \
    && wget https://www.delidded.com/dl-content/uploads/2014/06/intelmicrocodelist_v04a.zip -O intelmicrocodelist.zip \
    && unzip intelmicrocodelist.zip \
    && rm intelmicrocodelist.zip \
    && chmod 755 /usr/bin/intelmicrocodelist

# Todo: the Dosbox output gets mangled
