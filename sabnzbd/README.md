[appurl]: http://sabnzbd.org/
[![sabnzbd](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/sabnzbd-banner.png)][appurl]

SABnzbd makes Usenet as simple and streamlined as possible by automating everything we can. All you have to do is add an .nzb. SABnzbd takes over from there, where it will be automatically downloaded, verified, repaired, extracted and filed away with zero human interaction.

## Parameters

* `8080` - http port for the webui
* `9090` - https port for the webui *see note below*
* `/config` - local path for sabnzbd config files
* `/config/Downloads/complete` local path for finished downloads
* `/config/Downloads/incomplete` local path for incomplete-downloads - *optional*
* `PGID` for GroupID - see below for explanation
* `PUID` for UserID - see below for explanation
* `TZ` for setting timezone information, eg Europe/London

Container is based on alpine linux with s6 overlay, for shell access whilst the container is running use the console button in the GUI or use the console sub-command in the CLI.

### User / Group Identifiers

Sometimes when using data volumes permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application 
Initial setup is done from the http port.
Https access for sabnzbd needs to be enabled in either the intial setup wizard or in the configure settings of the webui, be sure to use 9090 as port for https.
See here for info on some of the switch settings for sabnzbd http://wiki.sabnzbd.org/configure-switches
