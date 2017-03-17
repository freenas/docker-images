# CrashPlan Container with CrashPlan Desktop App

## Supported Variables:

## Variable TZ: 

This will set the correct timezone. Set yours to avoid time related issues.

```
TZ="America/Sao_Paulo"
```

## Variable VNC_PASSWD:

This will enable password protection for your webui interface.

```
VNC_PASSWD="your_password"
```

## Supported Ports:

This container ports can be changed, in bridge network mode, using variables started by "TCP_PORT_" prefix.

## Port 4242

This port is used by CrashPlan for computer-to-computer backups.

## Port 4243

This port is used by CrashPlan app to connect to CrashPlan service.

## Port 4280

This port exposes a noVNC instance with the CrashPlan Desktop App. 

Navigate to ```http://yourip:4280/vnc.html?autoconnect=true&host=192.168.0.100&port=4280``` to access the graphical user interface.
