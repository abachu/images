FROM golang:1.13-alpine as builder

WORKDIR /app

ADD go.* ./
RUN go mod download

ADD main.go .
ADD proxy/ ./proxy/
RUN go build .

FROM alpine:latest

COPY --from=0 /app/proxy-server /app/proxy-server
COPY etc/nsswitch.conf /etc/nsswitch.conf

ENV PROXY_LISTEN_PORT=8080

EXPOSE 8080

CMD ["/app/proxy-server"]
