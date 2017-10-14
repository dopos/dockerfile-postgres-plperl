# dockerfile-postsgresql-plperl

Alpine 3.6 + Postgresql 9.6 packages (including plperl)

## Addons

* [docker-entrypoint.sh](https://github.com/docker-library/postgres/blob/master/9.6/alpine/docker-entrypoint.sh) from official postgresql image
* [shared-sync.sh](shared-sync.sh) for copying /opt/shared into /usr/share/postgresql on start or by direct call
* /opt/conf.d for additional server configs

## License

The MIT License (MIT), see [LICENSE](LICENSE).

Copyright (c) 2017 Alexey Kovrizhkin <lekovr+dopos@gmail.com>
