FROM linuxserver/hydra:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="1"                                           \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port=5075                                      \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="5075:5075/tcp"                         \
      org.freenas.volumes="[						                                \
          {								                                              \
              \"name\": \"/config\",					                          \
              \"descr\": \"Configuration files directory\"		          \
          },								                                            \
          {								                                              \
              \"name\": \"/downloads\",					                        \
              \"descr\": \"NZB downloads volume\"				                \
          }								                                              \
      ]"                                                                \
       org.freenas.settings="[      						                        \
          {								                                              \
              \"env\": \"PUID\",					                              \
              \"descr\": \"UserID\",	                                  \
              \"optional\": true					                              \
          },								                                            \
          {								                                              \
              \"env\": \"PGID\",					                              \
              \"descr\": \"GroupID\",		                                \
              \"optional\": true					                              \
          },								                                            \
          {								                                              \
              \"env\": \"TZ\",					                                \
              \"descr\": \"Timezone - eg Europe/London\",	           		\
              \"optional\": true					                              \
          }								                                            \
      ]"
