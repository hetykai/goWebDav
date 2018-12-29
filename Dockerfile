FROM hety/golang:latest AS builder
RUN apk add --no-cache git && CGO_ENABLED=0 go get github.com/hetykai/goWebDav

FROM scratch
COPY --from=builder /go/bin/goWebDav goWebDav
