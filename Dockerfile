FROM    hub.c.163.com/library/golang:latest
MAINTAINER demo <juest a demo>

WORKDIR /data
COPY main.go /data
RUN cd /data && go build main.go

EXPOSE 8080

ENTRYPOINT ["/data/main"]