[appurl]: https://syncthing.net
[![syncthing](https://syncthing.net/images/logo-horizontal.svg)][appurl]
# Syncthing replaces proprietary sync and cloud services with something open, trustworthy and decentralized.

Your data is your data alone and you deserve to choose where it is stored, if it is shared with some third party and how it's transmitted over the Internet.

You can find some of the best documentation available on the web at [docs.syncthing.net](http://docs.syncthing.net/).

## Parameters

* `/config` - This contain configuration to keep it static, as well as a default shared directory
* `/mnt/dir` - Add multiple folders to allow Syncthing access to data you wish to sync
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation
* `8384` Webui Port
* `22000` Listening Port
* `21027/udp` Discovery Port

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.

### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application

You can find some of the best documentation available on the web at [docs.syncthing.net](http://docs.syncthing.net/).

**Note: ** The Syncthing devs highly suggest setting a password for this container as it listens on 0.0.0.0. To do this go to `Actions -> Settings -> set user\password` for the webUI.
