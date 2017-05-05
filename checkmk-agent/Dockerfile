FROM xforty/checkmk

LABEL org.freenas.version="1"                           \
      org.freenas.interactive="false"                   \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.autostart="true"                      \
      org.freenas.port-mappings="6556:6556/tcp"         \
      org.freenas.volumes="[                            \
          {                                             \
              \"name\": \"/var/run/docker.sock\",       \
              \"descr\": \"/var/run/docker.sock\",      \
              \"readonly\": true                        \
          }                                             \
      ]"                                                \
      org.freenas.settings="[                           \
                {                                       \
                    \"env\": \"TZ\",                    \
                    \"descr\": \"Eg. America/Edmonton\", \
                    \"optional\": true                  \
                }                                       \
      ]"
