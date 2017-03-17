[appurl]:https://couchpota.to
[![couchpotato](https://couchpota.to/media/images/full.png)][appurl]

# An automatic NZB and torrent downloader.

You can keep a "movies I want" list and it will search for NZBs/torrents of these movies every X hours. Once a movie is found, it will send it to SABnzbd or download the torrent to a specified directory.

## Parameters

* `5050` - the port(s)
* `/config` - Couchpotato Application Data
* `/downloads` - Downloads Folder
* `/movies` - Movie Share
* `PGID` for for GroupID - see below for explanation
* `PUID` for for UserID - see below for explanation
* `TZ` for timezone information, eg Europe/London

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.

### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application
Access the webui at `<your-ip>:5050`, for more information check out [CouchPotato](https://couchpota.to).
