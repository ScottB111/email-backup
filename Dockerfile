FROM alpine:latest

RUN apk add --no-cache ca-certificates offlineimap 
RUN mkdir -p /mnt/data/ /mnt/metadata/
VOLUME [ "/mnt/data", "/mnt/metadata", "/imaprc" ]

ENTRYPOINT ["offlineimap"]
CMD ["-c", "imaprc", "-u", "basic", "-o"]
