FROM nginx:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="80:8080/tcp,443:8081/tcp"
      org.freenas.volumes="[						      \
          {								            \
              \"name\": \"/var/www/html\",					\
              \"descr\": \"html content\"		\
          }								      \
          ]"
