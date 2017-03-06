FROM linuxconfig/lemp-php7
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.port-mappings="3306:32772/tcp,80:32773/tcp,443:32774/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/www/html\",					\
              \"descr\": \"html directory\"			\
          }								\
      ]" 
