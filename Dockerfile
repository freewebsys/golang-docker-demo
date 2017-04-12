FROM    hub.c.163.com/library/golang:latest
MAINTAINER demo <juest a demo>

RUN apk add --update curl bash && \
    rm -rf /var/cache/apk/*

WORKDIR /data
COPY main.go /data
RUN cd /data && go build main.go

EXPOSE 8080

ENTRYPOINT ["/data/main"]