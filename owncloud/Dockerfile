FROM library/owncloud:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8080" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="80:8080/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/www/html\",				\
              \"descr\": \"Owncloud persistent data volume\"		\
          }								\
      ]" 

