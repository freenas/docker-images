FROM wallabag/wallabag:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="2.2.2"                                       \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port=80                                        \
      org.freenas.web-ui-path="/"                                       \
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
              \"descr\": \"UserID\",	                                \
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
              \"env\": \"SYMFONY__ENV__FOSUSER_REGISTRATION\",          \
              \"descr\": \"Default 'true', enable public registration\",\
          }                                                             \
      ]"
