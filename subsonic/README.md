![Alt text](http://www.activeobjects.no/subsonic/forum/templates/subSilver/images/logo_phpBB.gif "")

- [Introduction](#introduction)
- [Usage](#usage)
  - [Environment Variables](#environment-variables)
  - [Volumes](#volumes)
  - [Example](#example)


## Introduction

This is a Dockerfile for Subsonic version 6.0 based on the hurricane/subsonic image with FreeNAS Corral Docker metadata.

Subsonic is an open source, web-based media server.  Subsonic supports streaming to multiple clients
simultaneously, and supports any streamable media (including MP3, AAC, and
Ogg).  Subsonic also supports on-the-fly media conversion (through the use of
plugins) of most popular media formats, including WMA, FLAC, and more.


## Usage

# Environment Variables:

Most default settings can be adjusted by passing the appropriate environment
variable. Here is a list of any and all applicable environment variables that
can be override by the end user. 

| ENV VAR        | Definition                                                                     |
| ------------   | ------------------------------------------------------------------------------ |
| APP_USER       | Name of user the service will run as.\[3\]                                     |
| APP_UID        | UID assigned to APP_USER upon creation, or will query APP_USER's ID.\[2\]      |
| APP_GID        | GID assigned to APP_USER upon creation, or will query APP_USER's GID.\[2\]     |
| HTTP_PORT      | App's Web UI port used to configure and access the service.\[1\]               |
| HTTPS_PORT     | App's Web UI SSL port used to configure and access the service.\[1\]           |
| TZ			 | Timme Zone.  Ex. "America/New_York"	\[1\]										  |

\[1\]: Variable is applicable during install, when invoking installed wrapper script or systemd service.  
\[2\]: Variable is applicable only during Docker container creation.  
\[3\]: Variable is applicable in all scenarios.  

* The default UID and GID 1000.
* The default HTTP_PORT is 4040
* If you set HTTPS_PORT to something else other than `0` all HTTP request will be
redirected to HTTPS.


# Volumes:

* `/subsonic`  - Folder to store Subsonic's log, configuration and database.
* `/music`     - Default music folder.
* `/podcasts`  - Default podcast folder.
* `/playlists` - Default playlists folder.
* `/media`     - Parent folder for all media types.  Allows user to map only one volume for all media types instead of isolated volumes for each media type.

# Example:

* APP_USER=subsonic
* APP_UID=911
* APP_GID=911
* HTTP_PORT=4040
* HTTPS_PORT=0
* /media:/mnt/tank/media