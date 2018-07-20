FROM alpine:latest
MAINTAINER Julian Matschinske (Bitspark) <julian.matschinske@bitspark.de> (@jmatschinske)

RUN apk update && apk add openssl git python3 nodejs nodejs-npm zip tar go musl-dev

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

CMD ["go", "get", "github.com/tcnksm/ghr"]
