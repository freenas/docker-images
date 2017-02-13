FROM cobraeti/docker-pyload
LABEL org.freenas.interactive="false" \
      org.freenas.version="1" \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port="8000" \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8000:8000/tcp" \
      org.freenas.volumes="[						\
          {								      \
              \"name\": \"/pyload/config\",			\
              \"descr\": \"Config storage space\"		\
          },								\
          {								      \
              \"name\": \"/pyload/downloads\",			\
              \"descr\": \"Downloads volume\"			\
          }                                                 \
       ]"                                                   \
       org.freenas.settings="[ 					\
             {								\
              \"env\": \"PGID\",					\
              \"descr\": \"GroupID\",				\
              \"optional\": true					\
             },								\
             {								\
              \"env\": \"PUID\",					\
              \"descr\": \"UserID\",				\
              \"optional\": true					\
            }								\
       ]"                                                    
