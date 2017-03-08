FROM resilio/sync
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="https" \
      org.freenas.web-ui-port="8888" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8888:8888/tcp,55555:55555/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/mnt/sync\",					\
              \"descr\": \"Sync Directory\"				\
          }								\
      ]"
