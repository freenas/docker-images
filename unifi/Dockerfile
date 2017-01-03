FROM jacobalberty/unifi:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=5 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8443 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="3478:3478/udp,6789:6789/tcp,8080:8080/tcp,8081:8081/tcp,8443:8443/tcp,8843:8843/tcp,8880:8880/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/var/lib/unifi\",					\
              \"descr\": \"UniFi Configuration Data\"			\
          },								\
          {								\
              \"name\": \"/var/log/unifi\",					\
              \"descr\": \"UniFi Log Files\"		\
          },								\
          {								\
              \"name\": \"/var/run/unifi\",					\
              \"descr\": \"UniFi Run Information\"				\
          }								\
      ]" \
      org.freenas.settings="[ 						\
          {								\
              \"env\": \"TZ\",						\
              \"descr\": \"Timezone - eg Europe/London\",		\
              \"optional\": true					\
          }								\
      ]"
