# What is UrBackup?

[UrBackup](https://www.urbackup.org/) is an easy to setup Open Source client/server backup system, that through a combination of image and file backups accomplishes both data safety and a fast restoration time.

File and image backups are made while the system is running without interrupting current processes.

UrBackup also continuously watches folders you want backed up in order to quickly find differences to previous backups. Because of that, incremental file backups are really fast.

Your files can be restored through the web interface, via the client or the Windows Explorer while the backups of drive volumes can be restored with a bootable CD or USB-Stick (bare metal restore).

A web interface makes setting up your own backup server really easy. For a quick impression please look at the [screenshots here](https://www.urbackup.org/impressions.html).

Currently there are over 10,000 running UrBackup server instances (with auto-update enabled) with some instances having hundreds of active clients.

## NOTE:
As it stands, the Docker implementation in FreeNAS Corral automatically uses Google's public DNS servers for name resolution within Docker hosts created by the system.  As such, any machines added to UrBackup will need to be added by IP address rather than hostname.  A work-around for this is to issue the following commands in the console of your Docker host VM:

~~~~ 
echo nameserver ip.ad.dr.ess > /etc/resolv.conf
echo nameserver 2nd.ad.dr.ess >> /etc/resolv.conf
echo search domain.tld >> /etc/resolv.conf
~~~~

Unfortunately, this work-around does not survive reboots, so if anyone has a more permanent solution, feel free to comment on this.