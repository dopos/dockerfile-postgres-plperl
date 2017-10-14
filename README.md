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

Alpine 3.6 + Postgresql 9.6 packages (including plperl)

[Docker image](https://store.docker.com/community/images/dopos/postgresql) built by Docker Cloud service.

## Addons

* [docker-entrypoint.sh](https://github.com/docker-library/postgres/blob/master/9.6/alpine/docker-entrypoint.sh) from official postgresql image
* [shared-sync.sh](shared-sync.sh) for copying /opt/shared into /usr/share/postgresql on start or by direct call
* /opt/conf.d for additional server configs

## Usage

See [docker-compose.inc.yml](https://github.com/dopos/dcape/blob/master/docker-compose.inc.yml)

## License

The MIT License (MIT), see [LICENSE](LICENSE).

Copyright (c) 2017 Alexey Kovrizhkin <lekovr+dopos@gmail.com>
