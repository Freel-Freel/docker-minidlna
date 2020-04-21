FROM alpine:latest
MAINTAINER Lopatin Roman <freel@botans.org>

ARG USER=minidlna
ARG UID=100
ARG GID=101

RUN apk add --no-cache minidlna

COPY --chown=${UID}:${GID} minidlna.conf /etc

USER ${UID}:${GID}
WORKDIR /var/lib/${USER}

ENTRYPOINT ["/usr/sbin/minidlnad", "-f", "/etc/minidlna.conf", "-d"]
CMD []

EXPOSE 8200
