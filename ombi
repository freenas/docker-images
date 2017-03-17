[linuxserverurl]: https://linuxserver.io
[forumurl]: https://forum.linuxserver.io
[ircurl]: https://www.linuxserver.io/irc/
[podcasturl]: https://www.linuxserver.io/podcast/
[appurl]: https://ombi.io/
[hub]: https://hub.docker.com/r/linuxserver/ombi/

[![linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)][linuxserverurl]

The [LinuxServer.io][linuxserverurl] team brings you another container release featuring easy user mapping and community support. Find us for support at:
* [forum.linuxserver.io][forumurl]
* [IRC][ircurl] on freenode at `#linuxserver.io`
* [Podcast][podcasturl] covers everything to do with getting the most from your Linux Server plus a focus on all things Docker and containerisation!

# linuxserver/ombi
[![](https://images.microbadger.com/badges/version/linuxserver/ombi.svg)](https://microbadger.com/images/linuxserver/ombi "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/linuxserver/ombi.svg)](http://microbadger.com/images/linuxserver/ombi "Get your own image badge on microbadger.com")[![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/ombi.svg)][hub][![Docker Stars](https://img.shields.io/docker/stars/linuxserver/ombi.svg)][hub][![Build Status](http://jenkins.linuxserver.io:8080/buildStatus/icon?job=Dockers/LinuxServer.io/linuxserver-ombi)](http://jenkins.linuxserver.io:8080/job/Dockers/job/LinuxServer.io/job/linuxserver-ombi/)

[hub]: https://hub.docker.com/r/linuxserver/ombi/

So what is [Ombi][appurl] you ask!?

Ombi allows you to host your own Plex Request and user management system.
 
If you are sharing your Plex server with other users, allow them to request new content using an easy to manage interface! 

Manage all your requests for Movies and TV with ease, leave notes for the user and get notification when a user requests something. 

Allow your users to post issues against their requests so you know there is a problem with the audio etc. 

Even automatically sent them weekly newsletters of new content that has been added to your Plex server!

[![ombi](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/ombi.png)][appurl]

## Usage

```
docker create \
    --name=ombi \
    -v /etc/localtime:/etc/localtime:ro \
    -v <path to data>:/config \
    -e PGID=<gid> -e PUID=<uid>  \
    -p 3579:3579 \
    linuxserver/ombi
```

## Parameters

`The parameters are split into two halves, separated by a colon, the left hand side representing the host and the right the container side. 
For example with a port -p external:internal - what this shows is the port mapping from internal to external of the container.
So -p 8080:80 would expose port 80 from inside the container to be accessible from the host's IP on port 8080
http://192.168.x.x:8080 would show you what's running INSIDE the container on port 80.`


* `-p 3579` - the port(s)
* `-v /etc/localtime` for timesync - *optional*
* `-v /config` - where ombi should store its config files
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation

It is based on ubuntu xenial with s6 overlay, for shell access whilst the container is running do `docker exec -it ombi /bin/bash`.

### User / Group Identifiers

Sometimes when using data volumes (`-v` flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

In this instance `PUID=1001` and `PGID=1001`. To find yours use `id user` as below:

```
  $ id <dockeruser>
      uid=1001(dockeruser) gid=1001(dockergroup) groups=1001(dockergroup)
```

## Setting up the application

Webui is at `<your-ip>:3579`, Follow the setup wizard on initial install.  Then configure the required services.

## Info

* To monitor the logs of the container in realtime `docker logs -f ombi`.
* Shell access whilst the container is running: `docker exec -it ombi /bin/bash`

* container version number 

`docker inspect -f '{{ index .Config.Labels "build_version" }}' ombi`

* image version number

`docker inspect -f '{{ index .Config.Labels "build_version" }}' linuxserver/ombi`

## Versions

+ **17.02.17:** Initial Release.
