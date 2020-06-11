# alpine-bash-curl-jq-yq

Simple alpine docker image with bash, curl, jq, jo, and yq. Do cURL ops, manipulate JSON and YAML!

Uses default alpine packages for `curl`, `jq`, `jo` (edge) and `bash`, manually grabs latest `yq` release from: https://github.com/mikefarah/yq/

Current versions (as of this branch/tag):
```
GNU bash, version 5.0.0(1)-release (x86_64-alpine-linux-musl)

jq-master-v20190408-1671-g3fd4a8c851

yq version 3.3.0

jo 1.3

curl 7.66.0 (x86_64-alpine-linux-musl) libcurl/7.66.0 OpenSSL/1.1.1d zlib/1.2.11 nghttp2/1.39.2
```

Docker: https://hub.docker.com/repository/docker/bitsofinfo/alpine-bash-curl-jq-yq

Usage:
```
docker run -it bitsofinfo/alpine-bash-curl-jq-yq:latest

docker run bitsofinfo/alpine-bash-curl-jq-yq:latest yq -h

docker run bitsofinfo/alpine-bash-curl-jq-yq:latest jq -h

docker run bitsofinfo/alpine-bash-curl-jq-yq:latest curl -h

docker run bitsofinfo/alpine-bash-curl-jq-yq:latest bash -c 'echo "hello world"'
```
