FROM linuxserver/znc:latest
LABEL org.freenas.interactive="false"			\
      org.freenas.version="1"				\
      org.freenas.upgradeable="false" 			\
      org.freenas.expose-ports-at-host="true" 		\
      org.freenas.autostart="true" 			\
      org.freenas.web-ui-protocol="https"               \
      org.freenas.web-ui-port="6501"                    \
      org.freenas.web-ui-path=""                        \
      org.freenas.port-mappings="6501:6501/tcp" 		\
      org.freenas.volumes="[				\
          {					\
              \"name\": \"/config\",			\
              \"descr\": \"Config storage space\"		\
          }					\
      ]" 						\
      org.freenas.settings="[ 			\
          {					\
              \"env\": \"TZ\",			\
              \"descr\": \"Timezone - eg Europe/London\",	\
              \"optional\": true			\
          },					\
          {					\
              \"env\": \"PGID\",			\
              \"descr\": \"GroupID\",			\
              \"optional\": true			\
          },					\
          {					\
              \"env\": \"PUID\",			\
              \"descr\": \"UserID\",			\
              \"optional\": true			\
         }					\
      ]"
