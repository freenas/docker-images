# Seafile Server Docker image
[Seafile](http://seafile.com/) server Docker image based on [Alpine Linux](https://hub.docker.com/_/alpine/).

## Quickstart

Set the following volumes /port mappings:

* /home/docker/seafile:/home/seafile
* 127.0.0.1:8000:80000
* 127.0.0.1:8082:8082

Containers, based on this image will automatically configure 
 Seafile enviroment if there isn't any. If Seafile enviroment is from previous version of Seafile, container will automatically upgrade it to latest version (by calling Seafile upgrade scripts).
 
### Used ports

This image uses 2 tcp ports:
* 8000 - seafile port
* 8082 - seahub port

If you want to run seafdav (WebDAV for Seafile), then port 8080 will be used also.

### Volume
This image uses one volume with internal path `/home/seafile`

It is recommended you use host directory mapping of named volume to run containers, so you will not lose your valuable data after image update and starting new container

For Web-server configuration, as media directory location you should enter
`<volume/path>/seafile-server/seahub/media`

In [httpd-conf](https://github.com/VGoshev/seafile-docker/blob/master/httpd-conf/) directory you can find
[lighttpd](https://www.lighttpd.net/) [config example](https://github.com/VGoshev/seafile-docker/blob/master/httpd-conf/lighttpd.conf.example) and
[haaproxy](https://www.haproxy.com/) [config example](https://github.com/VGoshev/seafile-docker/blob/master/httpd-conf/haproxy.cfg).

You can find 
[Nginx](https://manual.seafile.com/deploy/deploy_with_nginx.html) and 
[Apache](https://manual.seafile.com/deploy/deploy_with_apache.html) 
configurations in official Seafile Server [Manual](https://manual.seafile.com/).

### Supported ENV variables

When you running container, you can pass several enviroment variables (with **--env** option of **docker run** command):
* **`INTERACTIVE`**=\<0|1> - if container should ask you about some configuration values (on first run) and about upgrades. Default: 1
* **`SERVER_NAME`**=\<...> - Name of Seafile server (3 - 15 letters or digits), used only for first run in non-interactive mode. Default: Seafile
* **`SERVER_DOMAIN`**=\<...> - Domain or ip of seafile server, used only for first run in non-interactive mode. Default: seafile.domain.com
* **`SEAHUB`**=\<fastcgi> - If seahub should be started in FastCGI mode (set it "fastcgi" for FastCGI mode or leave empty otherwise). Default: empty (not FastCGI mode).
* **`SEAFILE_FASTCGI_HOST`**=\<ip> - Binding ip for seahub in FastCGI mode. Default: 127.0.0.1.
* **`HANDLE_SIGNALS`**=\<0|1> - If container should properly handle signals like SIGHUP and SIGTERM (SIGTERM is sending on `docker stop` command, for example). If signals handling is turned on, then script will run infinity cycle for waiting signal, what, in theory, could slightly increase CPU consumption by container. Default: 1 (i.e. Turned on).

## Useful commands in container

When you're inside of container, in home directory of seafile user, you can use following useful commands:
* `seafile-fsck` - check your libraries for errors (Originally seaf-fsck.sh is used for it)
* `seafile-gc` - remove ald unused data from storage of your seafile libraries (Originally seaf-gc.sh is used for it)
* `seafile-admin start` - start seafile and seahub daemons (if they were stopped)
* `seafile-admin stop` - stop seafile and seahub daemons
* `seafile-admin reset-admin` - reset seafile admin user and/or password
* `seafile-admin setup` - setup ccnet, seafile and seahub services (if they wasn't configured automatically by some reason)
* `seafile-admin create-admin` - create seafile admin user (if it wasn't created automatically by some reason)

## Tips&amp;Tricks and Known issues

* Make sure, that mounted data volume and files are readable and writable by container's seafile user(2016:2016).

* If you want to run seafdav, which is disabled by default, you can read it's [manual](https://manual.seafile.com/extension/webdav.html). Do not forget to publish port 8080 after it.

* If you do not want container to automatically upgrade your Seafile enviroment on image (and Seafile-server) update, 
you can add empty file named `.no-update` to directory `/home/seafile` in your container. You can use **`docker exec <container_name> touch /home/seafile/.no-update`** for it.

* Container uses seafile user to run seafile, so if you need to do something with root access in container, you can use **`docker exec -ti --user=0 <container_name> /bin/sh`** for it.

* On first run (end every image upgrade) container will copy seahub directory from `/usr/local/share/seahub` to `/home/seafile/seafile-server/seahub `(i.e. to the volume), so it cost about 40Mb of space.

* At this moment most seafile scripts (which are located in `/usr/local/share/seafile/scripts` directory) aren't working properly, but they are not deemed useful for this image (scripts `seaf-fsck.sh` and `seaf-gc.sh` are working correctly and also avaliable as `/usr/local/bin/seafile-fsck` and `/usr/local/bin/seafile-gc`).

* This image confugure sqlite-based Seafile server installation. If you want to run Seafile server witn MySQL\MariaDB, then you can configure it manually.
