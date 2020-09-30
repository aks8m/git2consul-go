FROM golang:1.15.2-alpine3.12
RUN mkdir /home/code \
    && apk add make \
    && apk add git \
    && git config --global http.sslVerify false
WORKDIR /home/code
COPY ./ ./
RUN make build
ENTRYPOINT ["/home/code/git2consul"]