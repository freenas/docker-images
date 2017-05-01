[appurl]: http://deluge-torrent.org/
[Deluge][appurl] is a lightweight, Free Software, cross-platform BitTorrent client.

* Full Encryption
* WebUI
* Plugin System
* Much more...

[![deluge](https://avatars2.githubusercontent.com/u/6733935?v=3&s=200)][appurl]

## Usage

### Volumes:

* `<path to deluge config>:/config` deluge configs
* `<path to downloads>:/downloads` torrent download directory

### Variables:

* `PUID=<uid>` See below for explanation
* `PGID=<gid>` See below for explanation
* `TZ=<timezone>` e.g. Europe/London
* `UMASK_SET=<umask>` for umask setting of Deluge, *optional*, default if left unset is 022.

### Ports:
* 8112:8112
* 58846:58846
* 58946:58946
* 58946:58496/udp

### User / Group Identifiers

Sometimes when using data volumes, permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application

The admin interface is available at http://<ip>:8112 with a default user/password of admin/deluge.

To change the password (recommended) log in to the web interface and go to Preferences->Interface->Password.

Change the downloads location in the webui in Preferences->Downloads and use /downloads for completed downloads.
