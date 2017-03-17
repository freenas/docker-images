# Homebridge a lightweight NodeJS server you can run on your home network that emulates the iOS HomeKit API

Homebridge supports Plugins, which are community-contributed modules that provide a basic bridge from HomeKit to various 3rd-party APIs provided by manufacturers of "smart home" devices.

Since Siri supports devices added through HomeKit, this means that with Homebridge you can ask Siri to control devices that don't have any support for HomeKit at all. For instance, using just some of the available plugins, you can say:

Siri, unlock the back door. [pictured above]
Siri, open the garage door.
Siri, turn on the coffee maker.
Siri, turn on the living room lights.
Siri, good morning!

You can explore all available plugins at the NPM website by searching for the keyword homebridge-plugin.

### Homekit support for the impatient

##### This docker container is based on an image originally created by GitHub user [patrickbusch](https://github.com/patrickbusch/homebridge-docker), and adapted for Synology NAS units by GitHub user [marcoraddatz](https://hub.docker.com/r/marcoraddatz/homebridge/), so all credit for the container creation and testing goes to them.

With that out of the way...  This container is intended for FreeNAS Corral (FreeNAS 10) users, and includes the needed metadata to enable an easier setup process in the UI.

It containerizes [Homebridge](https://github.com/nfarina/homebridge), and exposes the following to users in the FreeNAS WebUI:

* Ports:  
   * `5353 UDP` - Used for mDNS/Avahi/Bonjour to communicate with iOS devices
   * `51826 TCP` - Used for communication with external APIs and non-iOS devices

* Volumes:
   * `/root/.homebridge` - Your config.json needs to be created/copied to this location and made           readable by root
