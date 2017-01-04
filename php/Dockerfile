FROM evild/alpine-php:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="9000:9000/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/www/html\",					\
              \"descr\": \"html directory\"			\
          }								\
      ]" \
      org.freenas.settings="[ 				\
          {						\
              \"env\": \"DB_NAME\",		\
              \"descr\": \"DB name\",	\
              \"optional\": true			\
          },						\
          {						\
              \"env\": \"TABLE_PREFIX\",		\
              \"descr\": \"Tablename\",	\
              \"optional\": true			\
          }, 						\
          {						\
              \"env\": \"DB_HOST\",		\
              \"descr\": \"host name\",	\
              \"optional\": true			\
          }, 						\
          {						\
              \"env\": \"DB_PASSWORD\",			\
              \"descr\": \"db pw\",	\
              \"optional\": true			\
          }						\
      ]"
