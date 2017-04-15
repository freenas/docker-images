FROM hurricane/subsonic 
ENV TERM=xterm
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="4040" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="4040:4040/tcp" \
      org.freenas.volumes="[                                            \
          {                                                             \
              \"name\": \"/subsonic\",                              \
              \"descr\": \"Subsonic config volume\"                       \
          },                                                            \
          {                                                             \
              \"name\": \"/music\",                                      \
              \"descr\": \"Music volume\"                               \
          },                                                             \
          {                                                             \
              \"name\": \"/podcasts\",                                      \
              \"descr\": \"Podcast volume\"                               \
          },                                                             \
          {                                                             \
              \"name\": \"/playlists\",                                      \
              \"descr\": \"Playlists volume\"                               \
          },                                                             \
          {                                                             \
              \"name\": \"/media\",                                      \
              \"descr\": \"Media volume\"                               \
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
              \"env\": \"HTTPS_PORT\",                           \
              \"descr\": \"HTTPS Port\",                         \
              \"optional\": true                                        \
          },                                                             \
          {                                                             \
              \"env\": \"TZ\",                           \
              \"descr\": \"Time Zone\",                         \
              \"optional\": true                                        \
          }                                                             \
      ]"



