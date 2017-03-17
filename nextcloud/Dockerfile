FROM nextcloud:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="9000" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="80:9000/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/www/html\",				\
              \"descr\": \"Nextcloud persistent data volume\"		\
          }								\
      ]" 

