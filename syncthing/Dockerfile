FROM linuxserver/syncthing:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8384" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8384:8384/tcp,22000:22000/tcp,21027:21027/udp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"			\
          },								\
          {								\
              \"name\": \"/data\",					\
              \"descr\": \"Media volume\"				\
          }								\
      ]" \
      org.freenas.settings="[ 					\
            {								\
             \"env\": \"PGID\",					\
             \"descr\": \"GroupID\",				\
             \"optional\": true					\
            },								\
            {								\
             \"env\": \"PUID\",					\
             \"descr\": \"UserID\",				\
             \"optional\": true					\
           }								\
      ]"
