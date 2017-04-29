FROM linuxserver/ombi:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="1"                                           \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port="3579"                                    \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="3579:3579/tcp"                         \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/config\",                                    \
              \"descr\": \"Config storage space\"                       \
          }                                                             \
      ]"                                                                \
      org.freenas.settings="[                                           \
          {                                                             \
              \"env\": \"TZ\",                                          \
              \"descr\": \"Timezone - eg Europe/London\",               \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"PGID\",                                        \
              \"descr\": \"GroupID\",                                   \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"PUID\",                                        \
              \"descr\": \"UserID\",                                    \
              \"optional\": true                                        \
         }                                                              \
      ]"
