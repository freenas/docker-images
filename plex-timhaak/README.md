# docker plex
This is a Dockerfile to set up ([https://plex.tv/](https://plex.tv/) "Plex Media Server") - ([https://plex.tv/](https://plex.tv/))

## Instructions

When the container starts, it will initialize the config directory and the configuration is populated through [environment variables](#environment-variables) that can be set using the command line or an envfile.

Browse to `http://*ipaddress*:32400/web` to run through the setup wizard.

By default, unauthenticated web access will only be available from the host machine and so to configure authentication for external access you will need a web browser on your host machine. If this is unavailable or you would like to have unauthenticated access from your LAN, then you can set the `PLEX_ALLOWED_NETWORKS` [environment variable](#environment-variables) to the subnet of your LAN either temporarily for configuration or permenantly for unauthenticated LAN access.

#### Avahi Auto Detection
For auto detection to work use capabilities-add=NET_BROADCAST or simply check the Privileged option in the FreeNAS UI. Be aware this more insecure and not best practice with docker images. The only reason for doing it is to allow Avahi to work (as it uses broadcasts that will not cross network boundries).

See the [Docker Networking Article](https://docs.docker.com/articles/networking/#how-docker-networks-a-container) for details on how docker networks a container.

## Configuration
### Environment Varaibles

| Variable Name           | Values                 | Behaviour                                                                            | Default value   |
| ----------------------: | :--------------------: | :----------------------------------------------------------------------------------- | :-------------: |
|     SKIP_CHOWN_CONFIG   |  `TRUE` or `FALSE`     | Startup will be faster and there won't be a permissions check for the configuration  | (unset)         |
|         PLEX_USERNAME   |        String          | Will add this Plex Media Server to that account                                      | (not set)       |
|         PLEX_PASSWORD   |        String          | (Mandatory if username is set) The account password | (not set)                      |                 |
|            PLEX_TOKEN   |   [Plex token][1]      | Plex token if you don't want to write your password | (not set)                      |                 |
|     PLEX_EXTERNALPORT   |       Integer          | The port if you're not using the default one (32400), ie. when using `-p 80:34200`   |  (not set)      |
| PLEX_DISABLE_SECURITY   |      `0` or `1`        | If set to 1, the remote security will be disabled | 1                                |                 |
|           RUN_AS_ROOT   |  `TRUE` or `FALSE`     | *Dangerous* If true, will start Plex as root | true                                  |                 |
| PLEX_ALLOWED_NETWORKS   | Comma-separated list   | List of networks to allow access to. Defaults to the docker network (public Plex)    | (not set)       |

To use an option, set it as a Docker environment variable through the CLI or GUI

## Mac and Apple TV Usage

For Docker on the mac and AppleTV discovery of the server you will need to open up more ports. The reason is that network broadcast privileges don't work as intended. A recommended setup for the ports would be something like this:

* 32400:32400
* 1900:1900/udp
* 3005:3005
* 5353:5353/udp
* 8324:8324
* 32410:32410/udp
* 32412:32412/udp
* 32413:32413/udp
* 32414:32414/udp
* 32469:32469

[1]: https://support.plex.tv/hc/en-us/articles/204059436-Finding-your-account-token-X-Plex-Token
