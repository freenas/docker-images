[appurl]: https://github.com/Hellowlol/HTPC-Manager
[![htpcmanager](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/htpcmanager-icon.png)][appurl]

# Htpcmanager, a front end for many htpc related applications.

## Parameters

* `8085` - the port(s)
* `/config` - where htpcmanager should store its configuration files.
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation
* `TZ` for timezone information, eg Europe/London

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.


### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application

The webui is found at port 8085.

Smartmontools has not been included, you can safely ignore the warning error in the log.
