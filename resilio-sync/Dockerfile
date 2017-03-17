FROM linuxserver/resilio-sync
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="https" \
      org.freenas.web-ui-port="8888" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8888:8888/tcp,55555:55555/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Configuration\"			\
          },								\
          {								\
              \"name\": \"/sync\",					\
              \"descr\": \"Sync Directory\"				\
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
