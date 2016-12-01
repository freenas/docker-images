FROM emby/embyserver:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8096 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8096:8096/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Configuration files directory\"		\
          },								\
          {								\
              \"name\": \"/media\",					\
              \"descr\": \"Media volume\"				\
          }								\
      ]" \ 
      org.freenas.static_volumes="[					\
          {								\
              \"container_path\": \"/etc/localtime\",			\
              \"host_path\": \"/etc/localtime\",			\
              \"readonly\": \"true\"					\
          }								\
      ]" 

