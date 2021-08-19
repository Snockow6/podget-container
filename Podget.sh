#!/bin/bash

sudo podman stop Podget
sudo podman rm Podget

sudo podman build --tag podget:1 -f ./Dockerfile

sudo podman run -d --name Podget \
-e PUID=101009 \
-e PGID=101009 \
-v /mnt/Gamma/Podcasts:/Podget/POD:Z,rw \
-v /Container/Podget/config:/Podget/config:Z,rw \
localhost/podget:1
