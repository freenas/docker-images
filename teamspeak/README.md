[appurl]: https://teamspeak.com
[![teamspeak](http://teamspeak.com/assets/images/logos/teamspeak.png)][appurl]

# VoIP software designed with security in mind, featuring crystal clear voice quality, endless customization options, and scalabilty up to thousands of simultaneous users.

## Usage

### Volumes:
* `<path to teamspeak config>:/config` teamspeak config directory

### Variables:
* `PUID=<uid>` See below for explanation
* `PGID=<gid>` See below for explanation

### Ports:
* 9987:9987/udp
* 30033:30033
* 10011:10011
* 41144:41144

### User / Group Identifiers

Sometimes when using data volumes (`-v` flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

## Setting up the application

There is no setup required, just start the container, watch the log and note the Serverquery user\pass, and the token.
