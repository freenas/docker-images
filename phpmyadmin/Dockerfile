FROM phpmyadmin/phpmyadmin:4.6.6-2
LABEL org.freenas.interactive="false"         		\
      org.freenas.version="4.6.6-2"           		\
      org.freenas.upgradeable="false"         		\
      org.freenas.expose-ports-at-host="true" 		\
      org.freenas.autostart="true"            		\
      org.freenas.web-ui-protocol="http"      		\
      org.freenas.web-ui-port=8080            		\
      org.freenas.web-ui-path=""              		\
      org.freenas.port-mappings="80:8080/tcp" 		\
      org.freenas.volumes="[				\
          {						\
	     \"name\": \"/etc/phpmyadmin\",		\
             \"descr\": \"Config Storage\"		\
          }						\
	]"						\
      org.freenas.settings="[                           \
          {                                             \
              \"env\": \"PMA_HOST\",                    \
              \"descr\": \"IP of MySQL server\",        \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"PMA_USER\",                    \
              \"descr\": \"PhpMyAdmin Username\",       \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"PMA_PASSWORD\",                \
              \"descr\": \"Admin Password\",            \
              \"optional\": true                        \
          },                                            \
          {                                             \
              \"env\": \"PMA_ABSOLUTE_URI\",            \
              \"descr\": \"User Facing URI\",           \
              \"optional\": true                        \
          }                                             \
      ]"
