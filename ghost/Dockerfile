FROM ghost:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="0.11" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=2368 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="2368:2368/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/lib/ghost\",				\
              \"descr\": \"Blog storage space\"				\
          }								\
      ]"
