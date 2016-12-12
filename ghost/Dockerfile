FROM ghost:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="0.11" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.bridged="false" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8080 \
      org.freenas.web-ui-path="/" \
      org.freenas.port-mappings="2368:8080/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/lib/ghost\",				\
              \"descr\": \"Blog storage space\"				\
          },								\
      ]"
