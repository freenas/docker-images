FROM writl/pyload:0.4.9
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
              \"name\": \"/opt/pyload/pyload-config\",					\
              \"descr\": \"Config storage space\"			\
          },								\
          {								\
              \"name\": \"/opt/pyload/Downloads\",					\
              \"descr\": \"Downloads volume\"				\
          }								\
       ]" \
       org.freenas.settings="[ 						\
         {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone - eg Europe/London\",		\
              \"optional\": true					\
          },								\
             {								\
              \"env\": \"APP_GID\",					\
              \"descr\": \"Group ID\",					\
              \"optional\": true					\
          },								\
             {								\
              \"env\": \"APP_UID\",					\
              \"descr\": \"User ID\",					\
              \"optional\": true					\
          }								\
       ]"
