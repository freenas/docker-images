# OpenHAB is a vendor and technology agnostic open source automation software for your home

The official documentation is located at [http://docs.openhab.org/](http://docs.openhab.org/)

### FreeNAS specific information

##### This docker container is based on [openhab/openhab-docker](https://github.com/openhab/openhab-docker) from the OpenHAB project. More information, including a README with much more information is available there.

This container adds metadata to make using OpenHAB easier on FreeNAS Corral.

There are three important directories for OpenHAB that should persist container restarts or upgrades. This image presents those in the FreeNAS UI. The default is to use volumes local to your Docker VM. This is not optimal, and I highly recommend filling out these values with a location elsewhere in your pool. It makes it easier to edit configuration files and less likely you will lose your hard work configuring OpenHAB.