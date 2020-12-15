FROM gtadam89/go

MAINTAINER gtadam@protonmail.ch

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]