FROM goofball222/unifi:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version="5.4.14" \
      org.freenas.upgradeable="false" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="https" \
      org.freenas.web-ui-port="8443" \
      org.freenas.web-ui-path="manage" \
      org.freenas.port-mappings="3478:3478/udp,6789:6789/tcp,8080:8080/tcp,8443:8443/tcp,8843:8843/tcp,8880:8880/tcp,10001:10001/udp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/usr/lib/unifi/data\",					\
              \"descr\": \"UniFi Configuration Data\"			\
          },							\
          {								\
              \"name\": \"/usr/lib/unifi/logs\",					\
              \"descr\": \"UniFi Controller Logs\"		    \
          }								\
      ]"                                \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone - eg Europe/London\",		\
              \"optional\": true					\
          }								\
      ]"
