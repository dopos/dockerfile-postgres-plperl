FROM postgres:9.6.11

MAINTAINER Alexey Kovrizhkin <lekovr+dopos@gmail.com>

ENV DOCKERFILE_VERSION  181221

RUN apt-get update && apt-get install -y \
    gawk \
    postgresql-plperl-$PG_MAJOR=$PG_VERSION \
    && localedef -i ru_RU -c -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8 \
    && rm -rf /var/lib/apt/lists/*

# Place for persistent content
RUN mkdir /initdb.d
VOLUME /initdb.d
ENV INITDB_DIR  /initdb.d

# Script to run on every start
COPY initdb.sh /usr/local/bin/

# Run initdb.sh as root on containter start
RUN sed -i 's%\(exec gosu postgres\)%initdb.sh\n\1%' /usr/local/bin/docker-entrypoint.sh
