[appurl]: https://sonarr.tv/
[![sonarr](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/sonarr-banner.png)][appurl]

# Sonarr: A PVR for usenet and bittorrent users

Sonarr (formerly NZBdrone) is a PVR for usenet and bittorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

## Parameters

* `8989` - the port sonarr webinterface
* `/dev/rtc:/dev/rtc:ro` - map hwclock as ReadOnly (mono throws exceptions otherwise)
* `/config` - database and sonarr configs
* `/tv` - location of TV library on disk
* `PGID` for for GroupID - see below for explanation
* `PUID` for for UserID - see below for explanation

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.

### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" <sup>TM</sup>.

## Setting up the application
Access the webui at `<your-ip>:8989`, for more information check out [Sonarr](https://sonarr.tv/).
