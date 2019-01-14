FROM alpine

LABEL maintainer="nizovtsevnv@gmail.com"

RUN apk add --update --no-cache nfs-utils && \
  echo "/shared/ro 0.0.0.0/0.0.0.0(ro,async,no_subtree_check)" > /etc/exports && \
  echo "/shared/rw 0.0.0.0/0.0.0.0(rw,async,no_subtree_check)" >> /etc/exports

COPY entrypoint /sbin/entrypoint

EXPOSE 111/udp 2049/tcp

VOLUME ["/shared/ro", "/shared/rw"]

CMD ["/sbin/entrypoint"]
