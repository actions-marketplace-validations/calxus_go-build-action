FROM gtadam89/go as builder

COPY src/ $GOPATH/src

RUN cd $GOPATH/src/app && \
    go get && \
    go build -o /app

FROM gcr.io/distroless/base-debian10

COPY --from=builder /app /app

ENTRYPOINT ["/app"]