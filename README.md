Podget Container is not built by the author/creator of Podget.

This is a simple container built using Centos 8 container that runs Podget.

Default Variables

PUID=1000 #User ID PGID=1000 #Group ID Refresh=1d #How many times it runs. (1d = everyday, 1m = everyminute) This controls how many times its gonna run Podget program to get podcasts

Volumes: /container/config/localtion:/podget/.podget #This is the location for all config files Podget generates /container/podcasts/location:/podget/POD #This is the location where Podget is goind to download podcasts
