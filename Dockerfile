ARG version=latest
FROM ubuntu:$version
MAINTAINER NG "ng@viragegroup.com"

LABEL maintainer="NG <ng@viragegroup.com>" \
      description="test-docker" \
      auteur="Nicolas Gavard"

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
