# alpine-bash-curl-jq-yq

Simple alpine docker image with bash, curl, jq, and yq. Do cURL ops, manipulate JSON and YAML!

Uses default alpine packages for `curl`, `jq` and `bash`, manually grabs latest `yq` release from: https://github.com/mikefarah/yq/

Current versions:
```
GNU bash, version 4.4.19(1)-release (x86_64-alpine-linux-musl)

jq-master-v3.8.0-3651-g18d55b6bda

yq version 3.2.1

curl 7.64.0 (x86_64-alpine-linux-musl) libcurl/7.64.0 OpenSSL/1.1.1a zlib/1.2.11 libssh2/1.9.0 nghttp2/1.35.1
```

Usage:
```
docker run -it bitsofinfo/alpine-bash-curl-jq-yq:latest

docker run bitsofinfo/alpine-bash-curl-jq-yq:latest yq -h

docker run bitsofinfo/alpine-bash-curl-jq-yq:latest jq -h

docker run bitsofinfo/alpine-bash-curl-jq-yq:latest curl -h

docker run bitsofinfo/alpine-bash-curl-jq-yq:1.0.0 bash -c 'echo "hello world"'
```
