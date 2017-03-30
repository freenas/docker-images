[appurl]: https://musicbrainz.org/
[hub]: https://hub.docker.com/r/linuxserver/musicbrainz/

# linuxserver/musicbrainz with FreeNAS 10 Metadata

[MusicBrainz][appurl] is an open music encyclopedia that collects music metadata and makes it available to the public.

[![musicbrainz](https://raw.githubusercontent.com/linuxserver/beta-templates/master/lsiodev/img/musicbrainzgitlogo.jpg)][appurl]

## Parameters

`The parameters are split into two halves, separated by a colon, the left hand side representing the host and the right the container side. 
For example with a port -p external:internal - what this shows is the port mapping from internal to external of the container.
So -p 8080:80 would expose port 80 from inside the container to be accessible from the host's IP on port 8080
http://192.168.x.x:8080 would show you what's running INSIDE the container on port 80.`


* `-p 5000` - the port(s)
* `-v /config` - config files for musicbrainz
* `-v /data` - data files for musicbrainz
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation
* `-e BRAINZCODE` - to enter musicbrainz code. see below
* `-e TZ` - timezone eg Europe/London

It is based on alpine linux with S6 overlay, for shell access whilst the container is running do `docker exec -it musicbrainz /bin/bash`.

### User / Group Identifiers

Sometimes when using data volumes (`-v` flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

In this instance `PUID=1001` and `PGID=1001`. To find yours use `id user` as below:

```
  $ id <dockeruser>
    uid=1001(dockeruser) gid=1001(dockergroup) groups=1001(dockergroup)
```
      
## Setting up the application 
+ **AFTER iniatilisation is complete you will need to edit the line `sub WEB_SERVER { "localhost:5000" }` in file /config/DBDefs.pm changing localhost to the ip of your host, this is to allow css to display properly**

* You must register here to recieve a musicbrainz code to allow you to recieve database updates, it is free. [Get Code here](https://metabrainz.org/supporters/account-type). 
* The initial import and setup of the database can take quite a long time, dependant on your download speed etc, be patient and don't restart the container before it's complete.
* It appears there are issues with unraid and using /mnt/user/cache/appdata instead of /mnt/cache/appdata, use /mnt/cache/appdata.

## Info
* To monitor the logs of the container in realtime `docker logs -f musicbrainz`.
* Shell access whilst the container is running: `docker exec -it musicbrainz /bin/bash`

* container version number 

`docker inspect -f '{{ index .Config.Labels "build_version" }}' musicbrainz`

* image version number

`docker inspect -f '{{ index .Config.Labels "build_version" }}' linuxserver/musicbrainz`
