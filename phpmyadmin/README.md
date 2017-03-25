# phpMyAdmin
A web interface for MySQL and MariaDB.

## About this image
This Docker image is based on the [official `phpmyadmin` image](https://hub.docker.com/_/phpmyadmin/).

## Credentials
phpMyAdmin does use MySQL server credential, please check the corresponding
server image for information how it is setup.

The official MySQL and MariaDB use following environment variables to define these:

* MYSQL_ROOT_PASSWORD - This variable is mandatory and specifies the password that 
will be set for the root superuser account.
* MYSQL_USER, MYSQL_PASSWORD - These variables are optional, used in conjunction 
to create a new user and to set that user's password.

## Environment variables summary
* PMA_ARBITRARY - when set to 1 connection to the arbitrary server will be allowed
* PMA_HOST - define address/host name of the MySQL server
* PMA_VERBOSE - define verbose name of the MySQL server
* PMA_PORT - define port of the MySQL server
* PMA_HOSTS - define comma separated list of address/host names of the MySQL servers
* PMA_VERBOSES - define comma separated list of verbose names of the MySQL serversx
* PMA_USER and PMA_PASSWORD - define username to use for config authentication method
* PMA_ABSOLUTE_URI - define user-facing URI

## Usage behind reverse proxys
Set the variable PMA_ABSOLUTE_URI to the Fully Qualified Domain Name (https://pma.example.net/) where the reverse proxy makes phpMyAdmin available.
