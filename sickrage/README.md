[appurl]: https://sickrage.github.io/
[![sickrage](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/sickrage-banner.png)][appurl]

# Sickrage: Automatic Video Library Manager for TV Shows.

Watches for new episodes of your favorite shows, and when they are posted it does its magic.

## Parameters

* `8081` - the port(s)
* `/config` - where sickrage should store config files.
* `/downloads` - your downloads folder
* `/tv` - your tv-shows folder
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation
* `TZ` for timezone information, eg Europe/London

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.

### User / Group Identifiers

Sometimes when using data volumes, permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application 

Web interface is at `<your ip>:8081` , set paths for downloads, tv-shows to match docker mappings via the webui.
