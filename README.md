# dockerfile-postsgresql-plperl

[![Docker Image][1]][2]
[![Version][3]][4]
[![GitHub license][5]][6]

[1]: https://images.microbadger.com/badges/image/dopos/postgresql.svg
[2]: https://microbadger.com/images/dopos/postgresql "Get your own image badge on microbadger.com"
[3]: https://images.microbadger.com/badges/version/dopos/postgresql.svg
[4]: https://microbadger.com/images/dopos/postgresql "Get your own version badge on microbadger.com"
[5]: https://img.shields.io/badge/license-MIT-blue.svg
[6]: LICENSE

Postgresql 9.6 oficial image + plperl, bash, gawk, diffutils

[Docker image](https://store.docker.com/community/images/dopos/postgresql) built by Docker Cloud service.

## Addons

* [shared-sync.sh](shared-sync.sh) for copying /opt/shared into /usr/share/postgresql on start or by direct call
* /opt/conf.d for additional server configs

## Usage

See [docker-compose.inc.yml](https://github.com/dopos/dcape/blob/master/docker-compose.inc.yml)

## Alpine note

Alpine linux does not used as base OS because it's v3.6 based on musl 1.1.16 and musl wont support LC_COLLATE up to 1.2.0.
Here is point from [musl Roadmap](http://wiki.musl-libc.org/wiki/Roadmap) for 1.2.0:

* LC_COLLATE support for collation orders other than simple codepoint order

## License

The MIT License (MIT), see [LICENSE](LICENSE).

Copyright (c) 2017 Alexey Kovrizhkin <lekovr+dopos@gmail.com>
