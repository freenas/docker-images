[appurl]: https://github.com/DobyTang/LazyLibrarian
[![lazylibrarian](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/lazylibrarian-icon.png)][appurl]

Lazylibrary is a program to follow authors and grab metadata for all your digital reading needs. It uses a combination of Goodreads Librarything and optionally GoogleBooks as sources for author info and book info.  This container is based on the DobyTang fork.

## Parameters

* `5299` - Port for webui
* `/config` Containers lazylibrarian config and database
* `/downloads` lazylibrarian download folder
* `/books` location of ebook library
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation
* `TZ` for setting timezone information, eg Europe/London

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.

### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application
Access the webui at `<your-ip>:5299/home`, for more information check out [LazyLibrarian][lazyurl]..
