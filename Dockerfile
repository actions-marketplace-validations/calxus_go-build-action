FROM gtadam89/go as builder

COPY src/ $GOPATH/src

RUN cd $GOPATH/src/app && \
    go get && \
    go build -o /app

FROM alpine:3.12

COPY --from=builder /app /app

ENTRYPOINT ["/app"]