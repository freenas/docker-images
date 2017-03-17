[appurl]: https://github.com/rembo10/headphones
[![headphones](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/headphones-banner.png)][appurl]

# Headphones, an automated music downloader for NZB and Torrent

Headphones is written in Python. It supports SABnzbd, NZBget, Transmission, µTorrent and Blackhole.



## Parameters

* `8181` - the port(s)
* `/config` - Configuration file location
* `/music` - Location of music. (i.e. /opt/downloads/music or /var/music)
* `/downloads` - Location of downloads folder
* `PGID` for for GroupID - see below for explanation - *optional*
* `PUID` for for UserID - see below for explanation - *optional*
* `TZ` for setting timezone information, eg Europe/London

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.

### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application

Access WebUI at `<your-ip>:8181` and walk through the wizard.
