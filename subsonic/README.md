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
* SUBSONIC_USER=akegata
* SUBSONIC_USER_UID=2000
* /var/subsonic:/mnt/tank/subsonic
* /home/akegata/music:/mnt/tank/music
* 4443:4443
