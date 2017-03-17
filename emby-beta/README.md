# Beta version of emby server

Emby Server is a home media server built on top of other popular open source
technologies such as Service Stack, jQuery, jQuery mobile, and Mono.

It features a REST-based API with built-in documention to facilitate client
development. We also have client libraries for our API to enable rapid
development.

# Environment Variables:

You can adjust some of the default settings set for container/application by
passing any or all of the following environment variable:  

| ENV VAR      | Definition                                                                     |
| ------------ | ------------------------------------------------------------------------------ |
| APP_USER     | Name of user the service will run as.\[4\]                                     |
| APP_UID      | UID assigned to APP_USER upon creation, or will query APP_USER's ID.\[3\]      |
| APP_GID      | GID assigned to APP_USER upon creation, or will query APP_USER's GID.\[3\]     |
| APP_CONFIG   | Location where application will store settings and database on host.\[1\]      |
| APP_GCONFIG  | Location where application will store settings and database within guest.\[4\] |
| UMASK        | umask assigned to service, default set to 002.\[4\]                            |
| EDGE         | Update the containerized service, default set to 0(Off).\[4\]                  |

\[1\]: Variable is applicable only during install.  
\[2\]: Variable is applicable during install, when invoking installed wrapper script or systemd service.  
\[3\]: Variable is applicable only when invoking docker run directly.  
\[4\]: Variable is applicable in all scenarios.  

# Volumes:

* `/config`  - Folder for configuration and settings.
