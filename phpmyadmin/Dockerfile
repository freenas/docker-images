FROM phpmyadmin/phpmyadmin:4.6.6-2
LABEL org.freenas.interactive="false"         					\
      org.freenas.version="4.6.6-2"           					\
      org.freenas.upgradeable="false"         					\
      org.freenas.expose-ports-at-host="true" 					\
      org.freenas.autostart="true"            					\
      org.freenas.web-ui-protocol="http"      					\
      org.freenas.web-ui-port=80              					\
      org.freenas.web-ui-path=""              					\
      org.freenas.port-mappings="80:8080/tcp" 					\
      org.freenas.settings="[                                                   \
          {                                                                     \
              \"env\": \"PMA_HOST\",                                            \
              \"descr\": \"IP of MySQL server\",                           	\
              \"optional\": true                                                \
          },                                                                    \
          {                                                                     \
              \"env\": \"PMA_HOSTS\",                                           \
              \"descr\": \"Comma separated host names of the MySQL servers\",   \
              \"optional\": true                                                \
          },                                                                    \
          {                                                                     \
              \"env\": \"PMA_USER\",                                            \
              \"descr\": \"MySQL username\",                			\
              \"optional\": true                                                \
          },                                                                    \
          {                                                                     \
              \"env\": \"PMA_PASSWORD\",                                        \
              \"descr\": \"MySQL password\",                			\
              \"optional\": true                                                \
          },                                                                    \
          {                                                                     \
              \"env\": \"PMA_ABSOLUTE_URI\",                                    \
              \"descr\": \"Define user-facing URI\",                            \
              \"optional\": true                                                \
          }                                                                     \
      ]"
