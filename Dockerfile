FROM alpine

LABEL maintainer="nizovtsevnv@gmail.com"

RUN apk add --update --no-cache nfs-utils && \
  echo "/shared/ro 0.0.0.0/0.0.0.0(ro)" > /etc/exports && \
  echo "/shared/rw 0.0.0.0/0.0.0.0(rw)" >> /etc/exports

EXPOSE 111/udp 2049/udp 2049/tcp

VOLUME ["/shared/ro", "/shared/rw"]

CMD ["/init"]
