FROM goofball222/unifi:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8443 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="3478:3478/udp,6789:6789/tcp,8080:8080/tcp,8443:8443/tcp,8843:8843/tcp,8880:8880/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/usr/lib/unifi/data\",					\
              \"descr\": \"UniFi Configuration Data\"			\
          },								\
          {								\
              \"name\": \"/usr/lib/unifi/logs\",					\
              \"descr\": \"UniFi Controller Logs\"		\
          },								\
          {								\
              \"name\": \"/var/log/supervisor\",					\
              \"descr\": \"UniFi supervisord Logs\"				\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone - eg Europe/London\",		\
              \"optional\": true					\
          }								\
      ]"
