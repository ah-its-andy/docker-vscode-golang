FROM debian:stable-slim

ARG GO_BIN_URL
ARG GO_PROXY=https://goproxy.cn,direct

ADD $GO_BIN_URL /etc/golang/golang.tar.gz

RUN tar -xzf /etc/golang/golang.tar.gz -C /etc/golang \
&& rm /etc/golang/golang.tar.gz \
&& ln -s /etc/golang/go/bin/go /usr/bin/go

RUN apt-get update > /dev/null\
&& apt-get install -y -q git\
&& apt-get clean \
&& apt-get autoclean \
&& apt-get autoremove

RUN /usr/bin/go env -w GOPROXY=$GO_PROXY \
&& /usr/bin/go get -v github.com/uudashr/gopkgs/v2/cmd/gopkgs \
&& /usr/bin/go get -v github.com/ramya-rao-a/go-outline \
&& /usr/bin/go get -v github.com/cweill/gotests/gotests \
&& /usr/bin/go get -v github.com/fatih/gomodifytags \
&& /usr/bin/go get -v github.com/josharian/impl \
&& /usr/bin/go get -v github.com/haya14busa/goplay/cmd/goplay \
&& /usr/bin/go get -v github.com/go-delve/delve/cmd/dlv


