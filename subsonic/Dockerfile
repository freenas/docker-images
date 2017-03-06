FROM akegata/subsonic:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="4443" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="4443:4443/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/subsonic\",				\
              \"descr\": \"Subsonic data volume\"			\
          },								\
          {								\
              \"name\": \"/mnt/music\",					\
              \"descr\": \"Media volume\"				\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"SUBSONIC_USER\",				\
              \"descr\": \"Subsonic username\",				\
              \"optional\": false					\
          },								\
          {								\
              \"env\": \"SUBSONIC_USER_UID\",				\
              \"descr\": \"Subsonic user UID\",				\
              \"optional\": true					\
          }								\
      ]"

