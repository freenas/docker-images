[appurl]: https://github.com/evilhero/mylar
[![mylar](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/mylar-icon.png)][appurl]

# An automated Comic Book downloader (cbr/cbz) for use with SABnzbd, NZBGet and torrents.

## Parameters

* `8090` - the port(s)
* `/config` - where mylar should store config files
* `/downloads` - map to your downloads folder
* `/comics` - map to your comics folder
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation
* `TZ` for setting timezone information, eg Europe/London

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.

### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application

The web ui for settings etc, is on `<your-ip>:8090`
For more detailed setup refer [mylar](https://github.com/evilhero/mylar).
