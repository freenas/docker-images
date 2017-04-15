FROM diginc/pi-hole:alpine
LABEL org.freenas.interactive="false"                           \
      org.freenas.version="1"                              \
      org.freenas.upgradeable="false"                           \
      org.freenas.expose-ports-at-host="true"                   \
      org.freenas.autostart="true"                              \
      org.freenas.capabilities-add="NET_ADMIN"                  \
      org.freenas.web-ui-protocol="http"                        \
      org.freenas.web-ui-port=80                                \
      org.freenas.web-ui-path="admin"                           \
      org.freenas.port-mappings="53:53/tcp,53:53/udp,80:80/tcp" \
      org.freenas.volumes="[                         \
          {                                          \
              \"name\": \"/etc/pihole/\",            \
              \"descr\": \"Configuration directory\" \
          }                                          \
      ]"                                             \
      org.freenas.settings="[                                                            \
          {                                                                              \
              \"env\": \"ServerIP\",                                                     \
              \"descr\": \"This container's external IP\",                               \
              \"optional\": false                                                        \
          },                                                                             \
          {                                                                              \
              \"env\": \"WEBPASSWORD\",                                                  \
              \"descr\": \"Custom password; set this or Pi-Hole generates one for you\", \
              \"optional\": true                                                         \
          },                                                                             \
          {                                                                              \
              \"env\": \"DNS1\",                                                         \
              \"descr\": \"Primary upstream DNS; default: 8.8.8.8\",                     \
              \"optional\": true                                                         \
          },                                                                             \
          {                                                                              \
              \"env\": \"DNS2\",                                                         \
              \"descr\": \"Secondary upstream DNS; default: 8.8.4.4\",                   \
              \"optional\": true                                                         \
          },                                                                             \
          {                                                                              \
              \"env\": \"VIRTUAL_HOST\",                                                 \
              \"descr\": \"Allows admin-access using a custom hostname / IP\",           \
              \"optional\": true                                                         \
          },                                                                             \
          {                                                                              \
              \"env\": \"IPv6\",                                                         \
              \"descr\": \"Set to 'false' to disable IPv6 support\",                     \
              \"optional\": true                                                         \
          }                                                                              \
      ]"
