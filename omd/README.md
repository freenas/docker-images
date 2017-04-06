# omd-labs-docker

OMD Labs Nightly (https://labs.consol.de/de/omd/index.html) on Docker with Ansible support.

Author: Simon Meggle, *simon.meggle at consol.de*

Built on Debian 8 with custom site named "cmk".

### Use data containers

#### Host mounted data folders

As soon as the container dies, all monitoring data (configuration files, RRD data, InfluxDB, log files etc.) are lost, too. To keep the data persistent, use host mounted volumes.

Mount host directories for:

 * /opt/omd/sites/cmk/local
 * /opt/omd/sites/cmk/etc
 * /opt/omd/sites/cmk/var

Default user: omdadmin

Default password: omd

https:(ip-address)/cmk/
