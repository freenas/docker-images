# Homebridge
### Homekit support for the impatient

##### This docker container is based on an image originally created by GitHub user [patrickbusch](https://github.com/patrickbusch/homebridge-docker), and adapted for Synology NAS units by GitHub user [marcoraddatz](https://hub.docker.com/r/marcoraddatz/homebridge/), so all credit for the container creation and testing goes to them.

With that out of the way...  This container is intended for FreeNAS Corral (FreeNAS 10) users, and includes the needed metadata to enable an easier setup process in the UI.

It containerizes [Homebridge](https://github.com/nfarina/homebridge), and exposes the following to users in the FreeNAS WebUI:

* Ports:  
   * `5353 UDP` - Used for mDNS/Avahi/Bonjour to communicate with iOS devices
   * `51826 TCP` - Used for communication with external APIs and non-iOS devices

* Volumes:
   * `/root/.homebridge` - Your config.json needs to be created/copied to this location and made           readable by root

More edits tomorrow!