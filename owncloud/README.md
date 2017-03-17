[appurl]: https://owncloud.org/
[![owncloud](https://raw.githubusercontent.com/docker-library/docs/9d36b4ed7cabc35dbd3849272ba2bd7abe482172/owncloud/logo.png)][appurl]

# What is ownCloud?

ownCloud is a self-hosted file sync and share server. It provides access to your data through a web interface, sync clients or WebDAV while providing a platform to view, sync and share across devices easily—all under your control. ownCloud’s open architecture is extensible via a simple but powerful API for applications and plugins and it works with any storage.


# How to use this image

## Start ownCloud

Starting the ownCloud instance listening on port 80 is as easy as just creating the container with all the defaults set.

Then go to http://containerip/ and go through the wizard. By default this container uses SQLite for data storage, but the wizard should allow for connecting to an existing database.

For a MySQL database you can link a database container by putting it on the same docker network and selecting `mysql` as the database host on setup.

## Persistent data

All data beyond what lives in the database (file uploads, etc) is stored within the default volume `/var/www/html`. With this volume, ownCloud will only be updated when the file `version.php` is not present.

-	`/<mydatalocation>:/var/www/html`

For fine grained data persistence, you can use 3 volumes, as shown below.

-	`/<mydatalocation>/apps:/var/www/html/apps` installed / modified apps
-	`/<mydatalocation>/config:/var/www/html/config` local configuration
-	`/<mydatalocation>/data:/var/www/html/data` the actual data of your ownCloud
