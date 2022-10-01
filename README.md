# Alfis Service Image

[Alfis](https://github.com/Revertron/Alfis) DNS docker image. Container reads and stores configs and logs in `/mnt/storage` directory. You could manipulate these files if mount the directory on the host.

_Docker compose entry example:_

```yml
alfis:
    build: .
    image: alfis_resolver_image
    container_name: alfis_resolver_container
    ports:
    - "53:53"
    volumes:
    - type: bind
      source: ./storage/alfis
      target: /mnt/storage
```
