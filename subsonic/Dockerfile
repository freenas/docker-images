FROM hurricane/subsonic 
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="4443" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="4443:4443/tcp" \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/subsonic\",                              \
              \"descr\": \"Subsonic data volume\"                       \
          },                                                            \
          {                                                             \
              \"name\": \"/media\",                                      \
              \"descr\": \"Media volume\"                               \
          },                                                             \
          {                                                             \
              \"name\": \"/config\",                                      \
              \"descr\": \"Subsonic config volume\"                               \
          }                                                             \
      ]" \
      org.freenas.settings="[                                           \
          {                                                             \
              \"env\": \"APP_USER\",                               \
              \"descr\": \"Subsonic username\",                         \
              \"optional\": true                                       \
          },                                                            \
          {                                                             \
              \"env\": \"APP_UID\",                           \
              \"descr\": \"Subsonic user UID\",                         \
              \"optional\": true                                        \
          },                                                            \
          {                                                             \
              \"env\": \"APP_GID\",                           \
              \"descr\": \"Subsonic user GID\",                         \
              \"optional\": true                                        \
          },                                                            \          
          {                                                             \
              \"env\": \"HTTP_PORT\",                           \
              \"descr\": \"HTTP Port\",                         \
              \"optional\": true                                        \
          },                                                             \
          {                                                             \
              \"env\": \"TZ\",                           \
              \"descr\": \"Time Zone\",                         \
              \"optional\": true                                        \
          }                                                             \
      ]"



