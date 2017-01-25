# docker-subsonic

## Description
A Dockerfile for [Subsonic](http://www.subsonic.org/) version 5.0.

## Ports

### 4443
WebUI port.

## Data
Uses the default /var/subsonic folder for data.

## User
Add the environmental variable SUBSONIC_USER to change the user the subsonic process runs as.
SUBSONIC_USER_UID specifies the UID of the user, and is optional.

## Example
docker run -d -e SUBSONIC_USER=akegata -e SUBSONIC_USER_UID=2000 -v '/var/subsonic:/var/subsonic' -v '/home/akegata/music:/mnt/music' -p 4443:4443 --name subsonic akegata/subsonic
