# NFS server

This is a repository of Docker preconfigured Alpine Linux image with automated building.

### Usage
```
docker run -d \
  -v /my/shared/ro:/shared/ro:ro \
  -v /my/shared/rw:/shared/rw:rw \
  nizovtsevnv/nfs
```
Or, with docker-compose:
```
...
services:
  nfs:
    image: nizovtsevnv/nfs
    volumes:
      - /my/shared/ro:/shared/ro:ro
      - /my/shared/ro:/shared/rw:rw
...
```

**Attention: NFS service provides unrestricted access, be careful with port publishing!**
