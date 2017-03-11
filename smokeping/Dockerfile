FROM linuxserver/smokeping:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="1"                                           \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port="8080"                                    \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="8080:8080/tcp"                         \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/config\",                                    \
              \"descr\": \"Config data\"                       \
          },                                                            \
          {                                                             \
              \"name\": \"/data\",                                 \
              \"descr\": \"DB and data\"                           \
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
