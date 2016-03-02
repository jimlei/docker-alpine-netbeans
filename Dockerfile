FROM anapsix/alpine-java:jdk8

MAINTAINER Jim Leirvik <jim@jimleirvik.no>

RUN adduser -D netbeans && \
    apk update && \
    apk add libxext libxtst libxrender && \
    rm -rf /tmp/src && \
    rm -rf /var/cache/apk/*

RUN mkdir -m 700 /data && \
    mkdir -m 700 /projects && \
    chown -R netbeans /data /projects

VOLUME /projects
VOLUME /data

USER netbeans
WORKDIR /data

RUN wget http://download.netbeans.org/netbeans/8.1/final/zip/netbeans-8.1-201510222201-php.zip -O ~/netbeans.zip -q && \
    unzip ~/netbeans.zip -q -d ~ && \
    rm ~/netbeans.zip

CMD ~/netbeans/bin/netbeans
