FROM pull writl/pyload
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8000 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8000:8000/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/opt/pyload/pyload-config\",	\
              \"descr\": \"Sabnzbd config files\"			\
          },								\
          {								\
              \"name\": \"/opt/pyload/Downloads\",			\
              \"descr\": \"Incomplete downloads volume\"		\
          },								\
							\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone information, eg Europe/London \",	\
          }								\
             {								\
              \"env\": \"PGID\",						\
              \"descr\": \"Group ID\",	\
          }								\
             {								\
              \"env\": \"PUID\",						\
              \"descr\": \"User ID\",	\
          }								\
      ]"
