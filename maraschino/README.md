docker-maraschino
==================

This is a Dockerfile setup for Maraschino.  Built in updater to go to current release - http://www.maraschinoproject.com/

# Configuration

* 7000:7000
* /path/to/config:/config


### Plex GIT Branch

Add the PLEX=1 variable to your install for the Plex Module. Cannot be used at same time as NZBDRONE=1.

### NZBDrone GIT Branch

Add the NZBDRONE=1 variable to your install for the NZBDRONE Module, also includes the Plex Module.  Cannot be used at same time as PLEX=1.
