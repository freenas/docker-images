[appurl]: http://beets.io/
[linuxserverurl]: https://www.linuxserver.io/
[![beets](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/beets-icon.png)][appurl]

# Beets is a music library manager and not, for the most part, a music player.

Beets does include a simple player plugin and an experimental Web-based player, but it generally leaves actual sound-reproduction to specialized tools. 

[![linuxserver](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)][linuxserverurl]

## Parameters

* `8337` - the port(s)
* `/config` - Configuration files
* `/music` - Music library location
* `/downloads` - Non-processed music
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation

Sometimes when using data volumes, permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application 

Edit the config file in /config

To edit the config from within the container use `beet config -e`
