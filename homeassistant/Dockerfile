FROM homeassistant/home-assistant
LABEL org.freenas.interactive="false" \
      org.freenas.version="0.40.2" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8123 \
      org.freenas.web-ui-path="states" \
      org.freenas.port-mappings="8123:8123/tcp" \
      org.freenas.volumes="[ \
          {	\
              \"name\": \"/config\",			\
              \"descr\": \"Configuration files\"	\
          }	\
      ]" \
      org.freenas.settings="[ 					\
          {							\
              \"env\": \"TZ\",					\
              \"descr\": \"homeassistant Container Timezone\",		\
              \"optional\": true				\
          }							\
      ]"
