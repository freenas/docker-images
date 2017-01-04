FROM sacretagent/needo-lazylibrarian:latest
LABEL org.freenas.interactive="false" \
      org.freenas.version=1 \
      org.freenas.upgradeable="true" \
      org.freenas.expose-ports-at-host="true" \
      org.freenas.autostart="true" \
      org.freenas.web-ui-protocol="http" \
      org.freenas.web-ui-port=8085 \
      org.freenas.web-ui-path="" \
      org.freenas.port-mappings="8085:8085/tcp" \
      org.freenas.volumes="[						\
          {								\
              \"name\": \"/config\",					\
              \"descr\": \"Configuration files directory\"		\
          },								\
          {								\
              \"name\": \"/downloads\",					\
              \"descr\": \"Downloads volume\"				\
          },								\
          {								\
              \"name\": \"/books\",					\
              \"descr\": \"Location of the books library\"		\
          }								\
      ]" \ 
      org.freenas.static-volumes="[					\
          {								\
              \"container_path\": \"/etc/localtime\",			\
              \"host_path\": \"/etc/localtime\",			\
              \"readonly\": \"true\"					\
          }								\
      ]" 

