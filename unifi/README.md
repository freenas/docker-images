# Ubiquiti Networks UniFi Controller container with FreeNAS metadata

**This container will work on FreeNAS and non-FreeNAS docker implementations**

This container follows the latest UniFi current stable/general availability release.

Current stable/general release is v5.4.x

## Usage

The container only has a single environment variable to pass to the container
* `TZ` - Configures the timezone, e.g. "America/Chicago"
- If you don't know your timezone value, you can look it up (see: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)

This container exposes two volumes:
* `/usr/lib/unifi/data` - UniFi configuration data and DBs
* `/usr/lib/unifi/logs` - UniFi and MongoDB logs for troubleshooting

This container exposes the following ports (see: https://help.ubnt.com/hc/en-us/articles/218506997-UniFi-Ports-Used):
* `3478/udp` (port used for STUN connection)
* `6789/tcp` (port used for throughput measurement from Android/iOS app)
* `8080/tcp` (port for UAP/USW/USG to inform controller)
* `8443/tcp` (port for controller GUI / API)
* `8880/tcp` (port for HTTP portal redirect)
* `8843/tcp` (port for HTTPS portal redirect)
* `10001/udp` (port used for UBNT discovery broadcasts - L2/same subnet **only**)

## Upgrading

**It is highly recommended to backup your data prior to installing updates.**

**This can be done by exporting a .unf file from the UniFi interface to be reimported if required. Database rollback from newer to older versions isn't always possible.**
