# alpine-bash-curl-jq-jo-yq-python

Simple alpine Docker image with bash, curl, jq, jo, python (3) and yq. Do cURL ops, manipulate JSON and YAML!

Uses alpine packages for `curl`, `python` (3), `jq`, `jo` (edge) and `bash`, manually grabs latest `yq` release from: https://github.com/mikefarah/yq/

Current versions (as of this branch/tag):
```
GNU bash, version 5.0.17(1)-release (x86_64-alpine-linux-musl)

jq-master-v20200428-28-g864c859e9d

yq version 3.3.2

jo 1.3

curl 7.69.1 (x86_64-alpine-linux-musl) libcurl/7.69.1 OpenSSL/1.1.1g zlib/1.2.11 nghttp2/1.41.0

Python 3.8.3
```

Additional install Python libraries:
```
Jinja2-2.11.2
```

Docker: https://hub.docker.com/repository/docker/bitsofinfo/alpine-bash-curl-jq-yq

Build:
```
docker build --no-cache . -t alpine-bash-curl-jq-jo-yq-python
```

Usage:
```
docker run -it bitsofinfo/alpine-bash-curl-jq-jo-yq-python:latest

docker run bitsofinfo/alpine-bash-curl-jq-jo-yq-python:latest yq -h

docker run bitsofinfo/alpine-bash-curl-jq-jo-yq-python:latest jq -h

docker run bitsofinfo/alpine-bash-curl-jq-jo-yq-python:latest jo -h

docker run bitsofinfo/alpine-bash-curl-jq-jo-yq-python:latest curl -h

docker run bitsofinfo/alpine-bash-curl-jq-jo-yq-python:latest bash -c 'echo "hello world"'

docker run bitsofinfo/alpine-bash-curl-jq-jo-yq-python:latest python --version

docker run bitsofinfo/alpine-bash-curl-jq-jo-yq-python:latest python -c 'print("hello world {}".format("bitsofinfo"))'
```
