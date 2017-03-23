# phpMyAdmin
A web interface for MySQL and MariaDB.

## About this image
This Docker image is based on the [official `phpmyadmin` image](https://hub.docker.com/_/phpmyadmin/).

## Available Variables
PMA_ARBITRARY - when set to 1 connection to the arbitrary server will be allowed

PMA_HOST - define address/host name of the MySQL server

PMA_VERBOSE - define verbose name of the MySQL server

PMA_PORT - define port of the MySQL server

PMA_HOSTS - define comma separated list of address/host names of the MySQL servers

PMA_VERBOSES - define comma separated list of verbose names of the MySQL servers

PMA_USER and PMA_PASSWORD - define username to use for config authentication method

PMA_ABSOLUTE_URI - define user-facing URI

## Usage behind reverse proxys
Set the variable PMA_ABSOLUTE_URI to the fully-qualified path (https://pma.example.net/) where the reverse proxy makes phpMyAdmin available.
