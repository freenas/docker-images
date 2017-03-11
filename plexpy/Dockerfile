FROM linuxserver/plexpy:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="1"                                           \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port="8181"                                    \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="8181:8181/tcp"                         \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/config\",                                    \
              \"descr\": \"Config storage space\"                       \
          },                                                            \
          {                                                             \
              \"name\": \"/logs\",                                 \
              \"descr\": \"Plex logs directory\"                           \
          }                                                            \
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
