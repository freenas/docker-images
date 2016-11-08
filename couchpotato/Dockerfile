FROM linuxserver/couchpotato:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=5050 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="5050:5050/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"			\
          },								\
          {								\
              \"name\": \"/movies\",					\
              \"descr\": \"Movies volume\"				\
          },								\
          {								\
              \"name\": \"/downloads\",					\
              \"descr\": \"Downloads volume\"				\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone - eg Europe/London\",		\
              \"optional\": true					\
          }								\
      ]"

