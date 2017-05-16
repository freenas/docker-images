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
              \"descr\": \"defaults to "pdo_sqlite"\",                  \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_HOST\",                 \
              \"descr\": \"defaults to 127.0.0.1\",                     \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_PORT\",                 \
              \"descr\": \"port of the database host\",                 \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_NAME\",                 \
              \"descr\": \"default "symfony", name of DB\",             \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_USER\",                 \
              \"descr\": \"default "root", name of DB user\",           \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__DATABASE_PASSWORD\",             \
              \"descr\": \"default "~", password of DB user\",          \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SYMFONY__ENV__FOSUSER_REGISTRATION\",          \
              \"descr\": \"Default 'true' public registration\",        \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"MYSQL_ROOT_PASSWORD\",                         \
              \"descr\": \"Needed for mariadb to initialise\",          \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"POPULATE_DATABASE\",                           \
              \"descr\": \"default "True" for new DB\",                 \
              \"optional\": true                                        \
          }                                                             \
       ]"
