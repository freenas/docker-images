FROM linuxserver/musicbrainz:latest
LABEL org.freenas.interactive="false"                                   \
      org.freenas.version="1"                                           \
      org.freenas.upgradeable="true"                                    \
      org.freenas.expose-ports-at-host="true"                           \
      org.freenas.autostart="true"                                      \
      org.freenas.web-ui-protocol="http"                                \
      org.freenas.web-ui-port=5000                                      \
      org.freenas.web-ui-path=""                                        \
      org.freenas.port-mappings="5000:5000/tcp"                         \
      org.freenas.volumes="[						                                \
          {								                                              \
              \"name\": \"/config\",					                          \
              \"descr\": \"Configuration files directory\"		          \
          },								                                            \
          {								                                              \
              \"name\": \"/data\",					                            \
              \"descr\": \"Data volume\"				                        \
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
          },								                                            \
          { \
              \"env\": \"WEBADDRESS\", \
              \"descr\": \"Defaults to localhost\", \
              \"optional\": true \
          }, \
          {								                                              \
              \"env\": \"BRAINZCODE\",					                        \
              \"descr\": \"Code from Musicbrainz\",	              			\
              \"optional\": false					                              \
          }								                                            \
      ]"
