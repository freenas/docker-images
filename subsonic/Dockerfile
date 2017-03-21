FROM cyrilix/subsonic 
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="4040" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8080:8080/tcp" \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/opt/data\",                              \
              \"descr\": \"Subsonic data volume\"                       \
          },                                                            \
          {                                                             \
              \"name\": \"/opt/media\",                                      \
              \"descr\": \"Media volume\"                               \
          }                                                             \
      ]" \
      org.freenas.settings="[                                           \
          {                                                             \
              \"env\": \"SUBSONIC_USER\",                               \
              \"descr\": \"Subsonic username\",                         \
              \"optional\": true                                       \
          },                                                            \
          {                                                             \
              \"env\": \"SUBSONIC_USER_UID\",                           \
              \"descr\": \"Subsonic user UID\",                         \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"SUBSONIC_VERSION\",                           \
              \"descr\": \"Subsonic Version\",                         \
              \"optional\": true                                        \
          }                                                             \

      ]"



