<p>Podget Container is not built by the author/creator of Podget.</p>
<p>This is a simple container built using Centos 8 container that runs Podget.</p>

<p>https://github.com/dvehrs/podget</p>

<h3>Enviroment Variables:</h3>
<p>PUID=1000 #User ID</p>
<p>PGID=1000 #Group ID</p>
<p>Refresh=1d #How many times it runs. (1d = everyday, 1m = everyminute) This controls how many times its gonna run Podget program to get podcasts</p>

<h3>Volumes: </h3>
<p>/container/config/localtion:/podget/.podget #This is the location for all config files Podget generates</p>
<p>/container/podcasts/location:/podget/POD #This is the location where Podget is goind to download podcasts</p>
