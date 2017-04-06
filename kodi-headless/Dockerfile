FROM linuxserver/kodi-headless
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="17.1"                                        \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port=8080                                      \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="8080:8080/tcp,9777:9777/udp"           \
      org.freenas.volumes="[				                \
          {						                \
              \"name\": \"/config/.kodi\",                                    \
              \"descr\": \"Configuration files directory\"              \
          }                                                             \
      ]"                                                                \
       org.freenas.settings="[                                          \
          {								\
              \"env\": \"PUID\",					\
              \"descr\": \"UserID\",	                                \
              \"optional\": true					\
          },								\
          {                                                             \
              \"env\": \"PGID\",                                        \
              \"descr\": \"GroupID\", 	                                \
              \"optional\": true			                \
          },						                \
          {						                \
              \"env\": \"TZ\",				                \
              \"descr\": \"Timezone - eg Europe/London\",               \
              \"optional\": true                                        \
          }                                                             \
      ]"
