FROM nginx:mainline
LABEL org.freenas.interactive="false"                                         \
      org.freenas.version="2"                                                 \
      org.freenas.upgradeable="false"                                         \
      org.freenas.expose-ports-at-host="true"                                 \
      org.freenas.autostart="true"                                            \
      org.freenas.port-mappings="80:8080/tcp,443:8081/tcp"                    \
      org.freenas.volumes="[						                  \
          {								                        \
              \"name\": \"/var/www/html\",					      \
              \"descr\": \"html content\"		                              \
          },                                                                  \
          {								                        \
              \"name\": \"/etc/nginx/conf.d/custom.conf\",				\
              \"descr\": \"custom conf\"		                              \
          },                                                                  \
          {								                        \
              \"name\": \"/etc/nginx/conf.d/default.conf\",				\
              \"descr\": \"default content if interested for port 80\"		\
          }                                                                   \
          ]"
