# cicd-toolbox

Simple alpine Docker image with bash, redis, curl, jq, jo, python (3), git and yq. Do cURL ops, manipulate JSON and YAML!

Uses alpine packages for `redis`, `curl`, `python` (3), `jq`, `jo` (edge) and `bash`, manually grabs latest `yq` release from: https://github.com/mikefarah/yq/

Current versions (as of this branch/tag):
```
GNU bash, version 5.0.17(1)-release (x86_64-alpine-linux-musl)

jq-master-v20200428-28-g864c859e9d

yq version 3.3.2

jo 1.3

curl 7.69.1 (x86_64-alpine-linux-musl) libcurl/7.69.1 OpenSSL/1.1.1g zlib/1.2.11 nghttp2/1.41.0

Python 3.8.3

redis-cli 5.0.9

git version 2.26.2
```

Additional install Python libraries:
```
Jinja2-2.11.2
pyyaml-5.3.1
redis-3.5.3
jsonpath-ng (latest)
requests (latest)
```

Docker: https://hub.docker.com/repository/docker/bitsofinfo/cicd-toolbox

Build:
```
docker build --no-cache . -t cicd-toolbox
```

Usage:
```
docker run -it bitsofinfo/cicd-toolbox:latest

docker run bitsofinfo/cicd-toolbox:latest yq -h

docker run bitsofinfo/cicd-toolbox:latest jq -h

docker run bitsofinfo/cicd-toolbox:latest jo -h

docker run bitsofinfo/cicd-toolbox:latest curl -h

docker run bitsofinfo/cicd-toolbox:latest bash -c 'echo "hello world"'

docker run bitsofinfo/cicd-toolbox:latest python --version

docker run bitsofinfo/cicd-toolbox:latest python -c 'print("hello world {}".format("bitsofinfo"))'

docker run bitsofinfo/cicd-toolbox:latest redis-cli -v
```
