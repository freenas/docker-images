# Overview:
NZBGet is a usenet downloader, written in C++ and designed with performance in mind to achieve maximum download speed by using very little system resources.  

This container is based on alpine linux with s6 overlay. For shell access whilst the container is running, use the console button or CLI sub-command.

# Parameters:

* 6789 - NZBGet WebUI Port
* /config - NZBGet App data
* /downloads - location of downloads on disk
* PGID for for GroupID - see below for explanation
* PUID for for UserID - see below for explanation
* TZ for timezone EG. Europe/London

### User / Group Identifiers

Sometimes when using data volumes, permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.
