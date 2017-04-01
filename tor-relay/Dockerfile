FROM thezero/docker-tor-relay:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="1"                                           \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.capabilities-add="RESTART"                            \
      org.freenas.port-mappings="9001:9001/tcp"                         \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/home/tor/.tor\",                             \
              \"descr\": \"TOR keys\"                                   \
          }                                                             \
      ]"                                                                \
       org.freenas.settings="[                                          \
          {   \"env\": \"TORRC",                                        \
              \"descr\": \"/etc/tor/torrc.middle - See README\",        \
              \"optional\": false                                       \
          },                                                            \
          {   \"env\": \"NICKNAME",                                     \
              \"descr\": \"eg. myTORrelay\",                            \
              \"optional\": false                                       \
          },                                                            \
          {   \"env\": \"CONTACTINFO",                                  \
              \"descr\": \"eg. me@foo.bar - In case there are problems with node\", \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"PUID\",                                        \
              \"descr\": \"UserID\",                                    \
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
          }                                                             \
      ]"
