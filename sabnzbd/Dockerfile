FROM linuxserver/sabnzbd:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.bridged="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8080 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8080:8080/tcp,9090:9090/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Sabnzbd config files\"			\
          },								\
          {								\
              \"name\": \"/incomplete-downloads\",			\
              \"descr\": \"Incomplete downloads volume\"		\
          },								\
          {								\
              \"name\": \"/downloads\",					\
              \"descr\": \"Downloads volume\"				\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone information, eg Europe/London\",	\
              \"optional\": true					\
          }								\
      ]"

