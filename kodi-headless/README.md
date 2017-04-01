[appurl]: https://kodi.tv/
[hub]: https://hub.docker.com/r/linuxserver/kodi-headless/

# linuxserver/kodi-headless with FreeNAS metadata

A headless install of kodi in a docker container, most useful for a mysql setup of kodi to allow library updates to be sent without the need for a player system to be permanently on.

[![kodi](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/kodi-banner.png)][appurl]

You can choose between ,using tags, various main versions of kodi.

Add one of the tags,  if required,  to the linuxserver/kodi-headless line of the run/create command in the following format, linuxserver/kodi-headless:Krypton

#### Tags
+ **Helix**
+ **Isengard**
+ **Jarvis**
+ **Krypton** : current default branch.


**Parameters**

* `-p 8080` - webui port
* `-p 9777/udp` - esall interface port
* `-v /config/.kodi` - path for kodi configuration files
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation
* `-e TZ` - for timezone information *eg Europe/London, etc*

It is based on alpine linux with s6 overlay, for shell access whilst the container is running do `docker exec -it kodi-headless /bin/bash`.

### User / Group Identifiers

Sometimes when using data volumes (`-v` flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

In this instance `PUID=1001` and `PGID=1001`. To find yours use `id user` as below:

```
  $ id <dockeruser>
    uid=1001(dockeruser) gid=1001(dockergroup) groups=1001(dockergroup)
```

## Setting up the application

Mysql/mariadb settings are entered by editing the file advancedsettings.xml which is found in the userdata folder of your /config/.kodi mapping. Many other settings are within this file also.

The default user/password for the web interface and for apps like couchpotato etc to send updates is kodi/kodi.

If you intend to use this kodi instance to perform library tasks other than merely updating, eg. library cleaning etc, it is important to copy over the sources.xml from the host machine that you performed the initial library scan on to the userdata folder of this instance, otherwise database loss can and most likely will occur.

## Info

* Shell access whilst the container is running: `docker exec -it kodi-headless /bin/bash`
* To monitor the logs of the container in realtime: `docker logs -f kodi-headless`

## Credits
Various members of the xbmc/kodi community for patches and advice.
