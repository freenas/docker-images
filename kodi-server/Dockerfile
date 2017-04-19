FROM celedhrim/kodi-server:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="17.1-Jarvis" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8089" \
      org.freenas.web-ui-path="web" \
      org.freenas.port-mappings="8089:8089/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/opt/kodi-server/share/kodi/portable_data\",					\
              \"descr\": \"Data volume\"				\
          }								\
      ]"
