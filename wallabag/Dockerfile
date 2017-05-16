FROM wallabag/wallabag:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="2.2.2"                                       \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port=80                                        \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="80:80/tcp"                             \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/var/www/wallabag/data\",                     \
              \"descr\": \"Data files directory\"                       \
          }                                                             \
      ]"                                                                \
       org.freenas.settings="[                                          \
          {                                                             \
              \"env\": \"PUID\",                                        \
              \"descr\": \"UserID\",	                              \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"PGID\",                                        \
              \"descr\": \"GroupID\",                                   \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"TZ\",                                          \
              \"descr\": \"Timezone - eg Europe/London\",               \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_DRIVER\",               \
              \"descr\": \"defaults to "pdo_sqlite", this sets the database driver to use\", \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_HOST\",                 \
              \"descr\": \"defaults to "127.0.0.1", if use mysql this should be the name of the mariadb container\", \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_PORT\",                 \
              \"descr\": \"port of the database host\",                 \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"TZ\",                                          \
              \"descr\": \"Timezone - eg Europe/London\",               \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_NAME\",                 \
              \"descr\": \"defaults to "symfony", this is the name of the database to use\", \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_USER\",                 \
              \"descr\": \"defaults to "root", this is the name of the database user to use\", \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_PASSWORD\",             \
              \"descr\": \"defaults to "~", this is the password of the database user to use\", \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__FOSUSER_REGISTRATION\",          \
              \"descr\": \"Default 'true', enable public registration\", \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"MYSQL_ROOT_PASSWORD\",                         \
              \"descr\": \"needed for the mariadb container to initialise\", \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"POPULATE_DATABASE\",                           \
              \"descr\": \"defaults to "True". Does the DB has to be populated or is it an existing on\", \
              \"optional\": true                                        \
          }                                                             \
       ]"
