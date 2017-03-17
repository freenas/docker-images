# Media streaming software

This is a Dockerfile for [Libresonic](http://libresonic.org).

## Parameters

* `/config` - This contains configuration to keep it static.
* `/media` - The folder containing the media files you wish to play.
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation
* `4040` WebUI Port

### User/Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host
OS and the container. We avoid this issue by allowing you to specify the user
`PUID` and group `PGID`. Ensure the config volume directory on the host is owned
by the same user you specify and it will "just work"™.

## Setting up the application

The default user/password is `admin`/`admin`, and should be changed to something
unique to you as soon as possible.
