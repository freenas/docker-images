FROM lsiobase/xenial:latest
LABEL org.freenas.version="1"                           \
      org.freenas.interactive="false" 					\
      org.freenas.web-ui-protocol="http"                \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.autostart="true" 					    \
      org.freenas.web-ui-protocol="http"                \
      org.freenas.web-ui-port=3579                      \
      org.freenas.port-mappings="3579:3579/tcp"         \
      org.freenas.static-volumes="[                     \
       {                                             \
              \"host_path\": \"",              \
              \"container_path\": \"/config\",         \
              \"readonly\": false                       \
          }                                             \
      ]"                                                \
      org.freenas.settings="[ 					        \
                {							            \
                    \"env\": \"PUID\",	        \
                    \"descr\": \"PUID\",	\
                    \"optional\": true					\
                },						                \
                {							            \
                    \"env\": \"PGID\",	        \
                    \"descr\": \"PGID\",	\
                    \"optional\": true					\
                },						                \
               
            ]"

ENTRYPOINT exec /usr/bin/cadvisor -logtostderr -storage_driver=${STORAGE_DRIVER} -storage_driver_host=${STORAGE_HOST} -storage_driver_db=${STORAGE_DB_NAME}
