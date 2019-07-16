ARG version=latest
FROM ubuntu:$version
#MAINTAINER JCD "jcd717@outlook.com"

LABEL maintainer="JCD <jcd717@outlook.com>" \
      description="test" \
      auteur="bruno dubois"

COPY heartbeat.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh ; \
    echo coucou >test.txt

ARG hbs=2
ENV HEARTBEATSTEP $hbs

WORKDIR /the/workdir/path

# information de port réseau utile
EXPOSE 1234/udp 4321/tcp

ENTRYPOINT ["/entrypoint.sh"]
CMD ["battement"]
