FROM alpine:3.6

MAINTAINER Alexey Kovrizhkin <lekovr+dopos@gmail.com>

ENV DOCKERFILE_VERSION  171014

ENV PG_MAJOR 9.6

RUN apk --update add --no-cache \
    bash gawk diffutils \
    postgresql postgresql-client \
    postgresql-contrib postgresql-plperl \
    tzdata su-exec

ENV PGDATA /var/lib/postgresql/data
VOLUME /var/lib/postgresql/data

RUN mkdir /docker-entrypoint-initdb.d
VOLUME /docker-entrypoint-initdb.d

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]

# /opt/shared will be copied into /usr/share/postgresql on start or by shared-sync.sh call
COPY shared-sync.sh /usr/local/bin/
RUN mkdir -p /opt/shared
VOLUME /opt/shared

# /opt/conf.d contains additional server configs
RUN mkdir /opt/conf.d
VOLUME /opt/conf.d
