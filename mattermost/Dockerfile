FROM mattermost/mattermost-preview:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8065 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8065:8065/tcp" 
      org.freenas.settings="[ 						\
         {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone - eg Europe/London\",		\
              \"optional\": true					\
          },								\
             {								\
              \"env\": \"PGID\",					\
              \"descr\": \"Group ID\",					\
              \"optional\": true					\
          },								\
             {								\
              \"env\": \"PUID\",					\
              \"descr\": \"User ID\",					\
              \"optional\": true					\
          }								\
       ]"
