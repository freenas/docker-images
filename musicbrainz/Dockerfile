FROM linuxserver/musicbrainz:latest

LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=5000 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="5000:5000/tcp" \
      org.freenas.volumes="[						                              \
          {								                                    \
              \"name\": \"/config\",					                        \
              \"descr\": \"Configuration files directory\"		                        \
          },								                              \
          {								                                    \
              \"name\": \"/data\",					                              \
              \"descr\": \"Data volume\"				                              \
          }								                                    \
       ]"                                                                                 \
       org.freenas.settings="[ 						                        \
          {								                                    \
              \"env\": \"PGID\",					                              \
              \"descr\": \"GID to read volumes\",				\
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"PUID\",					                              \
              \"descr\": \"UID to read volumes\",				\
              \"optional\": true					                              \
          },								                              \
          {								                                    \
              \"env\": \"BRAINZCODE\",					                        \
              \"descr\": \"Musicbrainz code to receive database updates\",				\
              \"optional\": false					                              \
          },								                              \
          {								                                    \
              \"env\": \"TZ\",					                              \
              \"descr\": \"timezone e.g. Europe/Athens\",				\
              \"optional\": true					                              \
          }								                              \
      ]"
