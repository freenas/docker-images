[appurl]: https://github.com/nextcloud
[![nextcloud](https://github.com/nextcloud/docker/raw/master/logo.png)][appurl]

# What is Nextcloud?

A safe home for all your data. Access & share your files, calendars, contacts, mail & more from any device, on your terms.

# How to use this image
This image is designed to be used in a micro-service environment. It consists of the Nextcloud installation in an [php-fpm](https://hub.docker.com/_/php/) container. To use this image it must be combined with any webserver that can proxy the http requests to the FastCGI-port of the container.

## Start Nextcloud

By default, Nexcloud will start on port 9000

Now you can get access to fpm running on port 9000 inside the container. If you want to access it from the internet, we recommend using a reverse proxy in front (see the nginx-proxy Docker container for one example). Once you have a reverse proxy, you can access Nextcloud at http://localhost/ and go through the wizard. 

By default this container uses SQLite for data storage, but the Nextcloud setup wizard (appears on first run) allows connecting to an existing MySQL/MariaDB or PostgreSQL database. You can also create a database container on a shared Docker network, e.g. "mysql", then use `mysql` as the database host on setup.

## Persistent data

All data beyond that which lives in the database (file uploads, etc) is stored within the default volume `/var/www/html`. With this volume, Nextcloud will only be updated when the file `version.php` is not present.

For fine grained data persistence, you can use 3 volumes, as shown below.

- `/<mydatalocation>/apps:/var/www/html/apps` installed / modified apps
- `/<mydatalocation>/config:/var/www/html/config` local configuration
- `/<mydatalocation>/data:/var/www/html/data` the actual data of your Nextcloud

The recommended minimal setup is using this image in combination with two containers: A database container and a reverse proxy for the http connection to the service.
A working example can be found at [IndieHosters/Nextcloud](https://github.com/indiehosters/nextcloud).

If you want to access your Nextcloud from the internet we recommend configuring your reverse proxy to use encryption (for example via [let's Encrypt](https://letsencrypt.org/))
