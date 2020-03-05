FROM gliderlabs/alpine:latest

RUN apk add --no-cache curl jq bash 

RUN LATEST_YQ_TAG=`curl --silent "https://api.github.com/repos/mikefarah/yq/releases/latest" | grep '"tag_name":' | sed -e 's/^.*"tag_name": "\([^"]*\)".*$/\1/'` && \
    curl --silent -o /bin/yq -L "https://github.com/mikefarah/yq/releases/download/$LATEST_YQ_TAG/yq_linux_amd64" && \
    chmod 755 /bin/yq 

RUN bash --version
RUN jq --version
RUN curl --version
RUN yq --version

CMD ["/bin/bash"]