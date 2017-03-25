FROM google/cadvisor:latest
LABEL org.freenas.version="2"                           \
      org.freenas.interactive="false" 			\
      org.freenas.web-ui-protocol="http"                \
      org.freenas.expose-ports-at-host="true"           \
      org.freenas.autostart="true" 			\
      org.freenas.web-ui-protocol="http"                \
      org.freenas.web-ui-port=8080                      \
      org.freenas.port-mappings="8080:8080/tcp"         \
      org.freenas.volumes="[                     \
          {                                             \
              \"host_path\": \"/\",                     \
              \"container_path\": \"/rootfs\",          \
              \"readonly\": true                        \
          },                                            \
          {                                             \
              \"host_path\": \"/sys\",                  \
              \"container_path\": \"/sys\",             \
              \"readonly\": true                        \
          },                                            \
          {                                             \
              \"host_path\": \"/var/lib/docker\",       \
              \"container_path\": \"/var/lib/docker\",  \
              \"readonly\": true                        \
          },                                            \
          {                                             \
              \"host_path\": \"/var/run\",              \
              \"container_path\": \"/var/run\",         \
              \"readonly\": false                       \
          }                                             \
      ]"                                                \
      org.freenas.settings="[ 			        \
                {					\
                    \"env\": \"STORAGE_DRIVER\",        \
                    \"descr\": \"Storage driver (e.g. statsd)\",	\
                    \"optional\": true					\
                },					                \
                {							\
                    \"env\": \"STORAGE_HOST\",	        		\
                    \"descr\": \"Storage host address (address:port)\",	\
                    \"optional\": true					\
                },						        \
                {						        \
                    \"env\": \"STORAGE_DB_NAME\",	    		\
                    \"descr\": \"Storage DB Name (for Influx)\",	\
                    \"optional\": true					\
                }						        \
            ]"

ENTRYPOINT exec /usr/bin/cadvisor -logtostderr -storage_driver=${STORAGE_DRIVER} -storage_driver_host=${STORAGE_HOST} -storage_driver_db=${STORAGE_DB_NAME}
