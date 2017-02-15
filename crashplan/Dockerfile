FROM gfjardim/crashplan:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="4.8.0" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=4280 \
      org.freenas.web-ui-path="vnc_auto.html" \
      org.freenas.port-mappings="4242:4242/tcp,4243:4243/tcp,4280:4280/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Config storage space\"			\
          },								\
          {								\
              \"name\": \"/data\",					\
              \"descr\": \"Storage volume\"				\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"VNC_PASSWD\",					\
              \"descr\": \"Password to the WebUI\",			\
              \"optional\": true					\
          },								\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone eg. America/Sao_Paulo\",		\
              \"optional\": true					\
          } 								\
      ]"

