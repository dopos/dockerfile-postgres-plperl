# dockerfile-postsgresql-plperl

[![ImageLayers Size][1]][2]
[![GitHub license][3]][4]

[1]: https://img.shields.io/imagelayers/image-size/dopos/postgresql/latest.svg
[2]: https://store.docker.com/community/images/dopos/postgresql
[3]: https://img.shields.io/badge/license-MIT-blue.svg
[4]: LICENSE

Alpine 3.6 + Postgresql 9.6 packages (including plperl)

[Docker image](https://store.docker.com/community/images/dopos/postgresql) built by Docker Cloud service.

## Addons

* [docker-entrypoint.sh](https://github.com/docker-library/postgres/blob/master/9.6/alpine/docker-entrypoint.sh) from official postgresql image
* [shared-sync.sh](shared-sync.sh) for copying /opt/shared into /usr/share/postgresql on start or by direct call
* /opt/conf.d for additional server configs

## Usage

See [docker-compose.inc.yml]()

## License

The MIT License (MIT), see [LICENSE](LICENSE).

Copyright (c) 2017 Alexey Kovrizhkin <lekovr+dopos@gmail.com>
