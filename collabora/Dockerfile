FROM collabora/code:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="1"                                           \
      org.freenas.upgradeable="false"                                   \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port=9980                                      \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="9980:9980/tcp"                         \
      org.freenas.settings="[                                           \
          {                                                             \
              \"env\": \"domain\",                                      \
              \"descr\": \"localhost\",                                 \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"username\",                                    \
              \"descr\": \"admin\",                                     \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"password\",                                    \
              \"descr\": \"secret\",                                    \
              \"optional\": true                                        \
          }                                                             \
      ]"
